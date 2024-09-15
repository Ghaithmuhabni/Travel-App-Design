import 'package:flutter/material.dart';
import '../Screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  Widget listTile(String title, IconData icon, VoidCallback onTapFun) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: onTapFun,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.amber,
            child: Text(
              "Your tourism guide",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          listTile("Trips", Icons.card_travel, () {
            Navigator.of(context).pushNamed("/");
          }),
          listTile("Filtering", Icons.filter_list, () {
            Navigator.of(context).pushNamed(FilterScreen.screenRoute);
          })
        ],
      ),
    );
  }
}
