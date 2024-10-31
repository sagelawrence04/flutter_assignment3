import 'package:flutter/material.dart';

import 'repositories/recipe_repository.dart';
import 'views/recipe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RecipeRepository recipeRepository = RecipeRepository();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spicy Miso Ramen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipePage(recipe: recipeRepository.getRecipe()),
    );
  }
}