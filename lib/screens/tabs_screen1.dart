import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';

import 'favourites_screen.dart';

class TabsScreen1 extends StatefulWidget {
  const TabsScreen1({Key? key}) : super(key: key);

  @override
  State<TabsScreen1> createState() => _TabsScreen1State();
}

class _TabsScreen1State extends State<TabsScreen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "CSG Meals",
            style: Theme.of(context).textTheme.headline6,
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: "Categories",
            ),
          Tab(
              icon: Icon(Icons.star),
              text: "Favourites",
            ),
          ]),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavouritesScreen()
        ]),
      ),
    );
  }
}
