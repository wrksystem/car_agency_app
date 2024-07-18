import 'package:flutter/material.dart';

import '../../data/models/car.dart';
import '../widgets/car_card.dart';

class CarListScreen extends StatelessWidget {

  final List<Car> cars = [
    Car(model: 'Fortune GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortune GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortune GR', distance: 870, fuelCapacity: 50, pricePerHour: 45),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: cars.length,
        itemBuilder: (context, index){
            return CarCard(car: cars[index]);
        }
      ),
    );
  }
}
