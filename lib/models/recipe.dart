
import 'ingredient.dart';

class Recipe {
  final String recipeName;
  final List<String> instructions;
  final List<Ingredient> ingredients;
  final String? description;
  final int rating;
  final int servings;
  final Duration prepTime;
  final Duration cookTime;

  Duration get totalTime => prepTime + cookTime;

  Recipe({
    required this.recipeName,
    this.instructions = const [],
    this.ingredients = const [],
    this.description,
    this.rating = 1,
    this.servings = 1,
    required this.prepTime,
    required this.cookTime,
  });

  double get cals => ingredients
      .map((e) => e.cals)
      .reduce((value, element) => value += element);

  double get proteins => ingredients
      .map((e) => e.proteins)
      .reduce((value, element) => value += element);

  double get carbs => ingredients
      .map((e) => e.carbs)
      .reduce((value, element) => value += element);

  double get fats => ingredients
      .map((e) => e.fats)
      .reduce((value, element) => value += element);
}


