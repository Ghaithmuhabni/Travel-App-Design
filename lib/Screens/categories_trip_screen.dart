import 'package:flutter/material.dart';

class categoriesTripScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  const categoriesTripScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle),
      ),
      body: Center(
          child: Text(
        "This summer's itinerary list",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
