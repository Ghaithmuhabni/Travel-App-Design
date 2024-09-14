import 'package:flutter/material.dart';

class tripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("$tripId"),
          centerTitle: true,
        ),
        body: Center(child: Text("this page for $tripId")),
      ),
    );
  }
}
