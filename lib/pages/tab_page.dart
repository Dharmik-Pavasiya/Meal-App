import 'package:flutter/material.dart';
import 'package:meal_app/pages/categories_page.dart';
import 'package:meal_app/pages/favourite_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Foodies',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favourite',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [CategoriesScreen(), FavouritePage()],
        ),
      ),
    );
  }
}
