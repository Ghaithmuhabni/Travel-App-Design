import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const screenRoute = '/filtering';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _isInSummer = false;
  var _isInWinter = false;
  var _isForFamily = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filtering"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                  title: Text(
                    "Summer Trips",
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text("Show only summer trips"),
                  value: _isInSummer,
                  onChanged: (newValue) {
                    setState(() {
                      _isInSummer = newValue;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    "Winter Trips",
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text("Show only Winter trips"),
                  value: _isInWinter,
                  onChanged: (newValue1) {
                    setState(() {
                      _isInWinter = newValue1;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    "Family Trips",
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text("Show only family trips"),
                  value: _isForFamily,
                  onChanged: (newValue2) {
                    setState(() {
                      _isForFamily = newValue2;
                    });
                  }),
            ],
          ))
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
