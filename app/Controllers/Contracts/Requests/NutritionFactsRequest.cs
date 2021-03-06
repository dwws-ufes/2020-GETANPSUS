using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;
using TasteUfes.Models;

namespace TasteUfes.Controllers.Contracts.Requests
{
    public class NutritionFactsRequest : EntityRequest
    {
        // [Required]
        // [Range(1, Int16.MaxValue)]
        [JsonPropertyName("serving_size")]
        public double ServingSize { get; set; }

        // [Required]
        // [Range(1, 7)]
        [JsonPropertyName("serving_size_unit")]
        public Measures ServingSizeUnit { get; set; }

        [JsonPropertyName("serving_energy")]
        public double ServingEnergy { get; set; }

        [JsonPropertyName("daily_value")]
        public double DailyValue { get; set; }

        [JsonPropertyName("nutrition_facts_nutrients")]
        public IEnumerable<NutritionFactsNutrientsRequest> NutritionFactsNutrients { get; set; }

        [JsonPropertyName("food_id")]
        public Guid FoodId { get; set; }
    }
}