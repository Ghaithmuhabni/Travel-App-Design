import 'package:flutter/material.dart';

class categoriesTripScreen extends StatelessWidget {
  static const screenRoute = "/category-trips";
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
      body: ListView.builder(itemBuilder: (ctx,index){
        return;
      })
    );
  }
}
