import 'package:flutter/material.dart';

class categoriesTripScreen extends StatelessWidget {
  const categoriesTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trips Page"),
      ),
      body: Center(
          child: Text(
        "This summer's itinerary list",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
