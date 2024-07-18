import 'package:bloc/bloc.dart';

import '../../domain/usecases/get_cars.dart';
import 'car_event.dart';
import 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarsLoading()){
    on<LoadCars>((event, emit) async {
      emit(CarsLoading());
      try {
        final cars = await getCars();
        emit(CarsLoaded(cars));
      } catch (e) {
        emit(CarsError(e.toString()));
      }

    });
  }

}