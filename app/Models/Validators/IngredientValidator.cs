using System;
using System.Linq;
using FluentValidation;
using Microsoft.Extensions.Localization;

namespace TasteUfes.Models.Validators
{
    public class IngredientValidator : AbstractValidator<Ingredient>
    {
        private static readonly Measures[] MASS = new[] { Measures.mg, Measures.g, Measures.kg, Measures.un };
        private static readonly Measures[] VOLUME = new[] { Measures.L, Measures.ml, Measures.un };

        public IngredientValidator(IStringLocalizer<SharedResources> localizer)
        {
            RuleFor(i => i.Quantity)
                .NotEmpty()
                .GreaterThan(0);

            RuleFor(i => i.QuantityUnit)
                .NotEmpty()
                .IsInEnum()
                .NotEqual(Measures.kcal);

            RuleFor(i => i.FoodId)
                .NotEmpty();

            RuleSet("MassVolumeConflict", () =>
            {
                RuleFor(i => i.Food)
                    .NotEmpty()
                    .SetValidator(new FoodValidator(localizer));

                When(i => MASS.Contains(i.Food.NutritionFacts.ServingSizeUnit), () =>
                {
                    RuleFor(i => i.QuantityUnit)
                        .Must(u => MASS.Contains(u));
                });

                When(i => VOLUME.Contains(i.Food.NutritionFacts.ServingSizeUnit), () =>
                {
                    RuleFor(i => i.QuantityUnit)
                        .Must(u => VOLUME.Contains(u));
                });
            });
        }
    }
}
