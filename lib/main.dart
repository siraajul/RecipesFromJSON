import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipes'),
        ),
        body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.fastfood),
              title: Text(recipes[index]['title'].toString()),
              subtitle: Text(
                recipes[index]['description'].toString(),
                style: TextStyle(fontSize: 12),
              ),
            );
          },
        ),
      ),
    );
  }
}

const recipes = [
  {
    'title': 'Pasta Carbonara',
    'description': 'Creamy pasta dish with bacon and cheese.',
    'ingredients': ['spaghetti', 'bacon', 'egg', 'cheese'],
  },
  {
    'title': 'Caprese Salad',
    'description':
        'Simple and refreshing salad with tomatoes, mozzarella, and basil.',
    'ingredients': ['tomatoes', 'mozzarella', 'basil'],
  },
  {
    'title': 'Banana Smoothie',
    'description': 'Healthy and creamy smoothie with bananas and milk.',
    'ingredients': ['bananas', 'milk'],
  },
  {
    'title': 'Chicken Stir-Fry',
    'description': 'Quick and flavorful stir-fried chicken with vegetables.',
    'ingredients': ['chicken breast', 'broccoli', 'carrot', 'soy sauce'],
  },
  {
    'title': 'Grilled Salmon',
    'description': 'Delicious grilled salmon with lemon and herbs.',
    'ingredients': ['salmon fillet', 'lemon', 'olive oil', 'dill'],
  },
  {
    'title': 'Vegetable Curry',
    'description': 'Spicy and aromatic vegetable curry.',
    'ingredients': ['mixed vegetables', 'coconut milk', 'curry powder'],
  },
  {
    'title': 'Berry Parfait',
    'description': 'Layered dessert with fresh berries and yogurt.',
    'ingredients': ['berries', 'yogurt', 'granola'],
  },
];
