import 'package:flutter/material.dart';
import '../Screens/categories_trip_screen.dart';
import '../Screens/filters_screen.dart';
import '../Screens/tabs_screen.dart';
import '../Screens/trip_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Map<String, bool> _filters = {
  //   "summer": false,
  //   "winter": false,
  //   "family": false,
  // };

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
