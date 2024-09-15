import 'package:flutter/material.dart';
import '../app_data.dart';
import '../Widgets/category_item.dart';

class categoriesScreen extends StatelessWidget {
  const categoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 7 / 8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        children: Categories_data.map(
          (categoryData) => categoryItem(
              categoryData.id, categoryData.title, categoryData.imageUrl),
        ).toList(),
      ),
    );
  }
}
