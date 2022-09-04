import 'package:flutter/material.dart';
import 'package:meal_app/pages/categories_page.dart';
import 'package:meal_app/pages/category_meal_page.dart';
import 'package:meal_app/pages/meal_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'Ralewayx',
                fontWeight: FontWeight.bold
              ),
            ),
      ),
      title: 'DeliMeals',
      initialRoute: '/',
      routes: {
        '/' : (context) => const CategoriesScreen(),
        '/category-meals' : (context) => const CategoryMealsPage(),
        '/meal-details' : (context) => const MealDetailsPage()
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen() );
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen() );
      },
    );
  }
}