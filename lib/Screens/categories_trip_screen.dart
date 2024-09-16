import 'package:flutter/material.dart';
import '../Models/trip.dart';
import '../Widgets/trip_item.dart';
import '../app_data.dart';

class categoriesTripScreen extends StatefulWidget {
  static const screenRoute = "/category-trips";

  @override
  State<categoriesTripScreen> createState() => _categoriesTripScreenState();
}

class _categoriesTripScreenState extends State<categoriesTripScreen> {
  late String categoryTitle;
  late List<Trip> displayTrips;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument["id"];
    categoryTitle = routeArgument["title"]!;
    displayTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(
              id: displayTrips[index].id,
              title: displayTrips[index].title,
              imageUrl: displayTrips[index].imageUrl,
              duration: displayTrips[index].duration,
              tripType: displayTrips[index].tripType,
              season: displayTrips[index].season,
              removeItem: _removeTrip,
            );
          },
          itemCount: displayTrips.length,
        ));
  }
}
