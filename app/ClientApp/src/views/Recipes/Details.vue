<template>
  <v-container class="details">
    <v-row justify="center">
      <v-col cols="12" md="12" d-flex justify-center class="py-0">
        <div class="d-flex">
          <span class="back-btn" @click="$router.go(-1)">
            <v-icon>mdi-chevron-left</v-icon> {{ $vuetify.lang.t('$vuetify.back') }}
          </span>
        </div>
      </v-col>
      <v-col cols="12" md="8" d-flex justify-center>
        <v-sheet v-if="load" :color="`grey lighten-4`" class="pa-3">
          <v-skeleton-loader
            class="mx-auto"
            type="article, list-item-three-line"
          ></v-skeleton-loader>
        </v-sheet>
        <v-card v-else>
          <v-card-title class="primary"
            ><h1>{{ recipe.name }}</h1></v-card-title
          >
          <v-divider class="mx-4" />
          <v-list-item>
            <v-list-item-content>
              <div class="my-2">
                <v-row>
                  <v-col justify="space-around">
                    <v-text-field
                      v-model.number="serv"
                      :label="this.$vuetify.lang.t('$vuetify.servings')"
                      type="number"
                      :rules="this.limitRule"
                      @change="recalculate()"
                    />
                  </v-col>
                </v-row>
              </div>
              <div class="my-2">
                <b>{{ $vuetify.lang.t('$vuetify.preparation_time') }}:</b>
                {{ this.recipe.preparation.preparation_time }}
              </div>
            </v-list-item-content>
          </v-list-item>
          <v-list-item v-if="this.recipe.ingredients.length > 0">
            <v-list-item-content>
              <h3>{{ $vuetify.lang.t('$vuetify.ingredients') }}</h3>
              <v-divider class="px-1 pb-3" />

              <v-list-item-content
                v-for="ingredient in this.recipe.ingredients"
                :key="ingredient.id"
              >
                <span>
                  <router-link
                    target="_blank"
                    class="text-decoration-none"
                    :to="{
                      name: 'DetailsFood',
                      params: { id: ingredient.food.id },
                    }"
                  >
                    <b
                      >{{ ingredient.food.name }}:
                      <v-icon class="d-inline" small>mdi-open-in-new</v-icon></b
                    >
                  </router-link>
                  {{ formatNumber(ingredient.quantity)
                  }}{{ getMeasureName(ingredient.quantity_unit) }}
                </span>
              </v-list-item-content>
            </v-list-item-content>
          </v-list-item>
          <v-list-item v-if="this.recipe.preparation.steps.length > 0">
            <v-list-item-content>
              <h3>{{ $vuetify.lang.t("$vuetify.steps") }}</h3>
              <v-divider class="px-1 pb-3" />
              <v-list-item-content
                v-for="step in this.recipe.preparation.steps"
                :key="step.step"
              >
                <ul>
                  <li>
                    <span>
                      <b>{{ $vuetify.lang.t("$vuetify.step") }} {{ step.step }}:</b> {{ step.description }}
                    </span>
                  </li>
                </ul>
              </v-list-item-content>
            </v-list-item-content>
          </v-list-item>
        </v-card>
      </v-col>
      <v-col cols="12" md="4">
        <v-row>
          <v-col cols="12" order="last" order-md="first">
            <v-card>
              <UserCard :user="this.recipe.user" :username="null" />
            </v-card>
          </v-col>
          <v-col cols="12" order="first" order-md="last">
            <v-card>
              <NutritionFactsTable
                :data="this.recipe.nutrition_facts"
                :servings="this.recipe.servings"
              />
            </v-card>
          </v-col>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { getRecipe, recalculatePerServing } from "@/api";
import NutritionFactsTable from "@/components/details/NutritionFactsTable.vue";
import UserCard from "@/components/UserCard.vue";

export default {
  name: "DetailsRecipe",

  data() {
    return {
      load: true,
      recipeId: this.$route.params.id,
      serv: null,
      limitRule: [
        (value) => value < 10000 || this.$vuetify.lang.t('$vuetify.too_big') + '.',
        (value) => value > 0 || this.$vuetify.lang.t('$vuetify.neg_zero') + '.',
      ],
      recipe: {
        name: "",
        servings: null,
        preparation: {
          steps: [],
        },
        ingredients: [],
        nutrition_facts: {},
        user: {
          roles: [],
        },
      },
    };
  },

  created: function () {
    this.getData();
  },

  methods: {
    getData: function () {
      getRecipe(this.recipeId)
        .then((result) => {
          this.recipe = result.data;
          this.recipe.preparation.steps.sort((step1, step2) => {
            if (step1.step < step2.step) return -1;
            else return 1;
          });
          this.serv = this.recipe.servings;
        })
        .catch((error) => {
          error.response.data.errors.map((error) => {
            this.$store.dispatch("setSnackbar", {
              text: `${error.message}`,
              color: "error",
            });
          });
        })
        .finally(() => {
          this.load = false;
        });
    },
    getMeasureName(id) {
      return this.$store.state.ingredients_measures.find(
        (measure) => measure.id == id
      ).name;
    },
    getDailyValue(daily_value) {
      return (daily_value * 100).toFixed(2);
    },

    recalculate() {
      if (this.serv > 0 && this.serv < 10000) {
        recalculatePerServing(this.recipe.id, this.serv)
          .then((result) => {
            this.recipe = result.data;
            this.recipe.preparation.steps.sort((step1, step2) => {
              if (step1.step < step2.step) return -1;
              else return 1;
            });
            this.recipe.ingredients.map((ing) => {
              let value = ing.quantity;
              ing.quantity = parseFloat(value.toFixed(2));
            });
          })
          .catch((error) => {
            error.response.data.errors.map((error) => {
              this.$store.dispatch("setSnackbar", {
                text: `${error.message}`,
                color: "error",
              });
            });
          });
      }
    },
    formatNumber(value) {
      return parseFloat(value.toFixed(2));
    },
  },

  components: {
    NutritionFactsTable,
    UserCard,
  },
};
</script>

<style lang="scss" scoped>
.details {
  .v-card {
    margin-top: 0;
  }
}
</style>