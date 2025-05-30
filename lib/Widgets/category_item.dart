import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/categories_trip_screen.dart';

class categoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  categoryItem(this.id, this.title, this.imageUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(categoriesTripScreen.screenRoute,
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 290,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
          )
        ],
      ),
    );
  }
}
