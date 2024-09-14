import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_data.dart';

class tripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("${selectedTrip.title}"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedTrip.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              "Activities",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 250,
            child: ListView.builder(
              itemCount: selectedTrip.activities.length,
              itemBuilder: (context, index) => Card(
                elevation: 0.3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    selectedTrip.activities[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
