import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  static const screenRoute = '/filtering';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filtering"),
      ),
      body: Center(
        child: Text("this is the fliter page"),
      ),
      drawer: AppDrawer(),
    );
  }
}
