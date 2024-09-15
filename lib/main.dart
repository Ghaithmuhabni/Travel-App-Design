import 'package:flutter/material.dart';
import '../Screens/categories_trip_screen.dart';
import '../Screens/filters_screen.dart';
import '../Screens/tabs_screen.dart';
import '../Screens/trip_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travil App",
      // home: categoriesScreen(),
      routes: {
        "/": (ctx) => TabsScreen(),
        categoriesTripScreen.screenRoute: (ctx) => categoriesTripScreen(),
        tripDetailScreen.screenRoute: (ctx) => tripDetailScreen(),
        FilterScreen.screenRoute: (ctx) => FilterScreen(),
      },
    );
  }
}
