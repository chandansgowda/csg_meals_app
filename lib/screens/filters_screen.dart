import 'package:flutter/material.dart';
import 'package:meals/screens/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _vegetarian = false;
  bool _glutenFree = false;
  bool _vegan = false;
  bool _lactoseFree = false;


  Widget _buildFilterListTile(filterText,filterValue, onChangeFunc){
    return SwitchListTile(
      title: Text(filterText),
      value: filterValue,
      subtitle: Text("Only include ${filterText.toString().toLowerCase()} meals"),
      onChanged: onChangeFunc,
      activeColor: Colors.pink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filters"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.save),
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Adjust your Meal Selection",
                style: TextStyle(fontSize: 26),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    _buildFilterListTile("Gluten Free",_glutenFree, (newValue){
                      setState(() {
                        _glutenFree = newValue;
                      });
                    }),
                    _buildFilterListTile("Lactose Free",_lactoseFree, (newValue){
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    }),
                    _buildFilterListTile("Vegetarian",_vegetarian, (newValue){
                      setState(() {
                        _vegetarian = newValue;
                      });
                    }),
                    _buildFilterListTile("Vegan",_vegan, (newValue){
                      setState(() {
                        _vegan = newValue;
                      });
                    }),

                  ],
                ),
              ),
            )
          ],
        ));
  }
}

