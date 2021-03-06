using System;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;
using TasteUfes.Models;

namespace TasteUfes.Controllers.Contracts.Requests
{
    public class IngredientRequest : EntityRequest
    {
        [Required]
        [Range(0.01, Int16.MaxValue)]
        [JsonPropertyName("quantity")]
        public double Quantity { get; set; }

        [Required]
        [JsonPropertyName("quantity_unit")]
        public Measures QuantityUnit { get; set; }

        [JsonPropertyName("food")]
        public FoodRequest Food { get; set; }

        [Required]
        [JsonPropertyName("food_id")]
        public Guid FoodId { get; set; }
    }
}