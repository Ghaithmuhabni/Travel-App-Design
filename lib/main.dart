import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/categories_screen.dart';
import 'package:flutter_application_1/Screens/categories_trip_screen.dart';
import 'package:flutter_application_1/Screens/tabs_screen.dart';
import 'package:flutter_application_1/Screens/trip_detail_screen.dart';

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
        tripDetailScreen.screenRoute: (context) => tripDetailScreen()
      },
    );
  }
}
