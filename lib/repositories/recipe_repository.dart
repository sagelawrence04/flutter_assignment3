
import '../models/food.dart';
import '../models/ingredient.dart';
import '../models/recipe.dart';

class RecipeRepository {

  Recipe getRecipe() {
    final instructions = [
      "Combine the miso, sesame oil, sake, mirin, gochujang and salt in a bowl. Mix really well and set aside. This is your tare",
      "Put your chicken stock in a pot and heat up until starts boiling. Let it simmering until before serving.",
      "Chop the green onions.",
      "Cook your pork chashu for 30 seconds on each side",
      "Put water in a pot and bring it to a boil. Add an Egg and let it cook for 6 minutes. When done, remove and put it in a bowl with ice cold water.",
      "After 5 minutes, peel your egg",
      "Cook your noodles according to the package.",
      "Add 2 tbsp of the tare into a bowl. Safe the rest for later",
      "Add the chicken stock into the bowl and mix well with the tare",
      "Add the noodles, then your green onions, pork chashu and your peeled egg",
      "Enjoy!"
    ];
    final ingredients = [
      Ingredient(
          food: FoodItem(
            "Ramen Noodles",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "gr",
          quantity: 120,
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Pork Chashu",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "slices",
          quantity: 2,
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Green Onions",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Egg",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Sesame Oil",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "tbsp",
          quantity: 2,
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Miso Paste",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "cup",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Sake",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "tbsp",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Mirin",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "tbsp",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Salt",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "tbsp",
          quantity: 3,
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Gochujang",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "cup",
          quantityInGrams: 20),
      Ingredient(
          food: FoodItem(
            "Chicken Stock",
            caloriesPer100Gr: 10,
            proteinsPer100Gr: 10,
            carbsPer100Gr: 10,
            fatsPer100Gr: 10,
          ),
          measurement: "ml",
          quantity: 500,
          quantityInGrams: 20),
    ];
    return Recipe(
      description: "Delicious Ramen dish to keep you warm!",
      recipeName: "Spicy Miso Ramen",
      instructions: instructions,
      ingredients: ingredients,
      rating: 3,
      servings: 4,
      prepTime: const Duration(minutes: 30),
      cookTime: const Duration(minutes: 30),
    );
  }

}