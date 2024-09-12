import 'package:flutter/material.dart';

class categoriesTripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument["id"];
    final categoryTitle = routeArgument["title"];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle!),
      ),
      body: Center(
          child: Text(
        "This summer's itinerary list",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
