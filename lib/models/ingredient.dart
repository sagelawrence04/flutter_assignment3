
import 'food.dart';

class Ingredient {
  final FoodItem food;
  final String measurement;
  final double quantity;
  final double quantityInGrams;

  double get cals => (quantityInGrams * food.caloriesPer100Gr) / 100;

  double get proteins => (quantityInGrams * food.proteinsPer100Gr) / 100;

  double get carbs => (quantityInGrams * food.carbsPer100Gr) / 100;

  double get fats => (quantityInGrams * food.fatsPer100Gr) / 100;

  Ingredient({
    required this.food,
    required this.measurement,
    required this.quantityInGrams,
    this.quantity = 1.0,
  });
}
