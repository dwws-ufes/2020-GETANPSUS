using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Tasteufes.Data.Interfaces;
using TasteUfes.Data.Context;
using TasteUfes.Models;

namespace TasteUfes.Data
{
    public class FoodRepository : EntityRepository<Food>, IFoodRepository
    {
        public FoodRepository(ApplicationDbContext context)
            : base(context) { }

        public override Food Get(Guid id)
        {
            return _context.Set<Food>()
                .Include(f => f.NutritionFacts)
                .ThenInclude(n => n.NutritionFactsNutrients)
                .ThenInclude(n => n.Nutrient)
                .FirstOrDefault(f => f.Id == id);
        }
    }
}