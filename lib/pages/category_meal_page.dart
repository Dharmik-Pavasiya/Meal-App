import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage({Key? key}) : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)!
        .settings
        .arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$categoryTitle'),
      ),
      body: ListView.builder(
        itemBuilder: (conatext, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
