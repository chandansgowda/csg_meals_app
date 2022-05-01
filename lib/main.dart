import 'package:flutter/material.dart';
import 'package:meals/screens/category_meals_screen.dart';
import 'package:meals/screens/filters_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSGMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.orangeAccent),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            color: Colors.white
        ),
          headline5: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              color: Colors.black
          ),

        )
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen()
      },
    );
  }
}
