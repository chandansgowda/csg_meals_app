import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Ingredients",
                    style: Theme.of(context).textTheme.headline6)),
            buildContainerWidget(selectedMeal,ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(padding: EdgeInsets.all(5),child: Text(selectedMeal.ingredients[index],style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),)),
                  color: Colors.amber,
                );
              },
              itemCount: selectedMeal.ingredients.length,
            ),),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Steps",
                    style: Theme.of(context).textTheme.headline6)),
            buildContainerWidget(selectedMeal, ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text("${index+1}"),backgroundColor: Colors.pink,),
                      title: Text('${selectedMeal.steps[index]}'),
                    ),
                    Divider()
                  ],
                );
              },
              itemCount: selectedMeal.steps.length,
            ),)
          ],
        ),
      ),
    );
  }

  Container buildContainerWidget(Meal selectedMeal, Widget child) {
    return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: child,
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
          );
  }
}
