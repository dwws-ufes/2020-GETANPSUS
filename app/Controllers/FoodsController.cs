using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TasteUfes.Models;
using TasteUfes.Resources;
using TasteUfes.Services.Interfaces;
using TasteUfes.Services.Notifications;
using VDS.RDF;
using VDS.RDF.Nodes;
using VDS.RDF.Query;

namespace TasteUfes.Controllers
{
    public class FoodsController : EntityApiControllerV1<Food, FoodResource>
    {
        public FoodsController(IFoodService foodService, IMapper mapper, INotificator notificator)
            : base(foodService, mapper, notificator) { }

        [HttpPost]
        [Authorize(Roles = "Admin")]
        public override ActionResult<FoodResource> Post([FromBody] FoodResource resource)
            => base.Post(resource);

        [HttpPut("{id}")]
        [Authorize(Roles = "Admin")]
        public override ActionResult<FoodResource> Put([FromRoute] Guid id, [FromBody] FoodResource resource)
        {
            if (resource.NutritionFacts != null)
            {
                foreach (var nfn in resource.NutritionFacts.NutritionFactsNutrients)
                {
                    nfn.Nutrient = null;
                }
            }

            return base.Put(id, resource);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "Admin")]
        public override IActionResult Delete([FromRoute] Guid id)
            => base.Delete(id);

        [HttpGet("~/api/v1/nutrients")]
        [AllowAnonymous]
        public ActionResult<IEnumerable<NutrientResource>> GetNutrients([FromServices] INutrientService nutrientService)
        {
            return Ok(Mapper.Map<IEnumerable<NutrientResource>>(nutrientService.GetAll()));
        }

        [HttpGet("ld/{foodName}")]
        public ActionResult<List<FoodResource>> GetLD([FromRoute] string foodName, [FromServices] INutrientService nutrientService)
        {
            var sparqlEndpoint = new SparqlRemoteEndpoint(new Uri("http://dbpedia.org/sparql"), "http://dbpedia.org");

            var query = $@"PREFIX dbo: <http://dbpedia.org/ontology/>
                PREFIX dbp: <http://dbpedia.org/property/>
                PREFIX foaf: <http://xmlns.com/foaf/0.1/> 
                PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

                SELECT DISTINCT ?ingredient ?name ?fat ?protein ?carbohydrate ?thumbnail ?servingSize WHERE
                {{
                    ?ingredient a dbo:Food ; rdfs:label ?name .
                    OPTIONAL {{ ?ingredient dbp:fat ?fat . }}
                    OPTIONAL {{ ?ingredient dbp:protein ?protein . }}
                    OPTIONAL {{ ?ingredient dbp:carbohydrate ?carbohydrate . }}
                    OPTIONAL {{ ?ingredient dbo:thumbnail ?thumbnail . }}
                    OPTIONAL {{ ?ingredient dbo:servingSize ?servingSize . }}
                    FILTER (LANG(?name) = 'en')
                    FILTER (REGEX(LCASE(STR(?name)), '{foodName.ToLower()}'))
                }}
                ORDER BY (!BOUND(?fat)) ASC (!BOUND(?carbohydrate)) ASC (!BOUND(?protein)) ASC (!BOUND(?servingSize)) DESC (STR(?fat) && STR(?carbohydrate) && STR(?protein) && STR(?servingSize))
                LIMIT 200";

            // Code-first distinct by name
            var result = sparqlEndpoint.QueryWithResultSet(query)
                .GroupBy(f => f["name"])
                .Select(f => f.First());

            if (!result.Any())
                return NotFound();

            var nutrients = nutrientService.GetAll();

            var totalFat = nutrients
                .FirstOrDefault(n => n.Name == "Total Fat");
            var carbohydrate = nutrients
                .FirstOrDefault(n => n.Name == "Carbohydrate");
            var protein = nutrients
                .FirstOrDefault(n => n.Name == "Protein");

            var foodList = new List<FoodResource>();

            foreach (var ldFood in result)
            {
                var foodResource = new FoodResource
                {
                    Name = GetStringOrDefault(ldFood["name"]),
                    NutritionFacts = new NutritionFactsResource
                    {
                        ServingSize = GetDoubleOrDefault(ldFood["servingSize"], 100),
                        ServingSizeUnit = Measures.g
                    }
                };

                var nutritionFactsNutrients = new List<NutritionFactsNutrientsResource>();

                nutritionFactsNutrients.Add(new NutritionFactsNutrientsResource
                {
                    AmountPerServing = GetDoubleOrDefault(ldFood["fat"]),
                    AmountPerServingUnit = Measures.g,
                    NutrientId = totalFat.Id
                });

                nutritionFactsNutrients.Add(new NutritionFactsNutrientsResource
                {
                    AmountPerServing = GetDoubleOrDefault(ldFood["carbohydrate"]),
                    AmountPerServingUnit = Measures.g,
                    NutrientId = carbohydrate.Id
                });

                nutritionFactsNutrients.Add(new NutritionFactsNutrientsResource
                {
                    AmountPerServing = GetDoubleOrDefault(ldFood["protein"]),
                    AmountPerServingUnit = Measures.g,
                    NutrientId = protein.Id
                });

                foodResource.NutritionFacts.NutritionFactsNutrients = nutritionFactsNutrients;
                foodList.Add(foodResource);
            }

            return foodList;
        }

        private string GetStringOrDefault(INode node, string defaultValue = null)
        {
            try
            {
                return node.AsValuedNode().AsString();
            }
            catch (Exception)
            {
                if (String.IsNullOrEmpty(defaultValue))
                    return node.ToString();

                return defaultValue;
            }
        }

        private double GetDoubleOrDefault(INode node, double defaultValue = 0)
        {
            if (node == null || node.NodeType != NodeType.Literal)
                return defaultValue;

            try
            {
                return node.AsValuedNode().AsDouble();
            }
            catch (Exception)
            {
                return Double.Parse(node.AsValuedNode().AsString());
            }
        }
    }
}
