import 'package:flutter/material.dart';
import 'package:meals/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.amber,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Text(
              "Cooking Up !",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  fontSize: 35),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            leading: Icon(Icons.restaurant),
            title: Text(
              "Menu",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName),
            leading: Icon(Icons.settings),
            title: Text(
              "Filters",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
