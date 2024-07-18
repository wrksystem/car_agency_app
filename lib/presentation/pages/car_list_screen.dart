import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/car_bloc.dart';
import '../bloc/car_state.dart';
import '../widgets/car_card.dart';

class CarListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
              'Choose your Car'),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state){
          if(state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          }
          else if(state is CarsLoaded){
            return ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (context, index){
                  return CarCard(car: state.cars[index]);
                }
            );
          }
          else if(state is CarsError) {
            return Center(child: Text('error : ${state.message}'),);
          }
          return Container();
        }
      )
    );
  }
}
