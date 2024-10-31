class FoodItem {
  final String name;
  final double caloriesPer100Gr;
  final double proteinsPer100Gr;
  final double carbsPer100Gr;
  final double fatsPer100Gr;

  FoodItem(
      this.name, {
        required this.caloriesPer100Gr,
        required this.proteinsPer100Gr,
        required this.carbsPer100Gr,
        required this.fatsPer100Gr,
      });
}
