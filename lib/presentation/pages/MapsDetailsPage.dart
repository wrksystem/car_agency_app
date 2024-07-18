import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../data/models/car.dart';

class MapsDetailsPage extends StatelessWidget {
  final Car car;

  const MapsDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(-15.7801, -47.9292),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'car_agency_app',
              )
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
            child: carDetailsCard(car: car),
          ),
        ],
      )
    );
  }
}

Widget carDetailsCard({required Car car}) {
  return SizedBox(
    height: 350,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                '${car.model}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.directions_car, color: Colors.white, size: 16),
                  SizedBox(width: 5),
                  Text(
                      '> ${car.distance} km',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.battery_full, color: Colors.white, size: 14),
                  SizedBox(width: 5),
                  Text(
                    '> ${car.fuelCapacity} L',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Features', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                featureIcons(),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${car.pricePerHour}/day', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                        child: Text('Book Now', style: TextStyle(color: Colors.white),),
                    ),
                  ],
                )
              ]

            ),
          ),
        ),

        Positioned(
          top: 50,
          right: 15,
          child: Image.asset('assets/white_car.png')),
      ],
    ),
  );
}

Widget featureIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      featureIcon(Icons.local_gas_station, 'Diesel', 'Common Rail'),
      featureIcon(Icons.speed, 'Acceleration', '0-100 km/h'),
      featureIcon(Icons.ac_unit, 'Cold', 'Temp Control'),
    ],
  );
}

Widget featureIcon(IconData icon, String title, String subtitle) {
  return Container(
    width: 100,
    height: 100,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      children: [
        Icon(icon, size: 28),
        Text(title),
        Text(
            subtitle,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    ),

  );
}


