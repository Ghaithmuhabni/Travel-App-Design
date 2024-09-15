import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/categories_screen.dart';
import 'package:flutter_application_1/Screens/favoriat_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Traviling App"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.dashboard),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favoraits',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            categoriesScreen(),
            FavoriatScreen()
          ],),
        ));
  }
}
