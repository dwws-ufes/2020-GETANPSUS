using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace TasteUfes.Controllers.Contracts.Responses
{
    public class PreparationResponse : EntityResponse
    {
        [JsonConverter(typeof(JsonTimeSpanConverter))]
        [JsonPropertyName("preparation_time")]
        public TimeSpan PreparationTime { get; set; }

        [JsonPropertyName("steps")]
        public IEnumerable<PreparationStepResponse> Steps { get; set; }
    }
}