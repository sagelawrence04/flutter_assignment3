import 'package:assignment_3_start/models/recipe.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth >= 540; //checks screen width

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RecipeHeader(recipe: recipe),
              const SizedBox(height: 16),
              RecipeHighlights(recipe: recipe, isWideScreen: isWideScreen),
              const SizedBox(height: 16),
              //for adjusting RecipeIngredients & RecipeInstructions based on screen width
              isWideScreen
                  ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: RecipeIngredients(recipe: recipe)),
                  const SizedBox(width: 16),
                  Expanded(child: RecipeInstructions(recipe: recipe)),
                ],
              )
                  : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RecipeIngredients(recipe: recipe),
                  const SizedBox(height: 16),
                  RecipeInstructions(recipe: recipe),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeHeader extends StatelessWidget {
  final Recipe recipe;
  const RecipeHeader({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                recipe.recipeName,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 26),
              ),
              const SizedBox(height: 8),
              Text(
                //Display nothing if description is empty
                recipe.description ?? "",
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeHighlights extends StatelessWidget {
  final Recipe recipe;
  final bool isWideScreen;
  const RecipeHighlights({Key? key, required this.recipe, required this.isWideScreen}) : super(key: key);

  //Highlights display in a row if screen width is bigger than 540, anything smaller and they display in two rows
  @override
  Widget build(BuildContext context) {
    return isWideScreen
        ? Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Highlight(
              title: "Prep Time",
              value: recipe.prepTime.inMinutes.toString(),
              icon: Icons.kitchen),
        ),
        Expanded(
          child: Highlight(
              title: "Cook Time",
              value: recipe.cookTime.inMinutes.toString(),
              icon: Icons.restaurant_menu),
        ),
        Expanded(
          child: Highlight(
              title: "Total Time",
              value: recipe.totalTime.inMinutes.toString(),
              icon: Icons.schedule),
        ),
        Expanded(
          child: Highlight(
              title: "Servings",
              value: recipe.servings.toString(),
              icon: Icons.restaurant),
        ),
        Expanded(
          child: Highlight(
              title: "Ratings",
              value: recipe.rating.toString(),
              icon: Icons.star),
        ),
      ],
    )
        : Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Highlight(
                  title: "Prep Time",
                  value: recipe.prepTime.inMinutes.toString(),
                  icon: Icons.kitchen),
            ),
            Expanded(
              child: Highlight(
                  title: "Cook Time",
                  value: recipe.cookTime.inMinutes.toString(),
                  icon: Icons.restaurant_menu),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Highlight(
                  title: "Total Time",
                  value: recipe.totalTime.inMinutes.toString(),
                  icon: Icons.schedule),
            ),
            Expanded(
              child: Highlight(
                  title: "Servings",
                  value: recipe.servings.toString(),
                  icon: Icons.restaurant),
            ),
            Expanded(
              child: Highlight(
                  title: "Ratings",
                  value: recipe.rating.toString(),
                  icon: Icons.star),
            ),
          ],
        ),
      ],
    );
  }
}

//Class to help define highlights
class Highlight extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const Highlight(
      {Key? key, required this.title, required this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(height: 4),
          Icon(icon),
          const SizedBox(height: 4),
          Text(value)
        ]
    );
  }
}

class RecipeIngredients extends StatelessWidget {
  final Recipe recipe;
  const RecipeIngredients({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ingredients',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recipe.ingredients.length,
            itemBuilder: (context, index) {
              final ingredient = recipe.ingredients[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '${ingredient.quantity}${ingredient.measurement} - ${ingredient.food.name}',
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecipeInstructions extends StatelessWidget {
  final Recipe recipe;
  const RecipeInstructions({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Instructions',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 16.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recipe.instructions.length,
            itemBuilder: (context, index) {
              final instruction = recipe.instructions[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '${index + 1}. $instruction', // Number each step
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

