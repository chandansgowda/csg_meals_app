import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final List categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return MealItem(id: categoryMeals[index].id, title: categoryMeals[index].title, imageUrl: categoryMeals[index].imageUrl, duration: categoryMeals[index].duration, complexity: categoryMeals[index].complexity, affordability: categoryMeals[index].affordability);
      }, itemCount: categoryMeals.length,),

    );
  }
}
