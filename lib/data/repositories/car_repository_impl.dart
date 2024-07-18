import 'package:car_agency_app/data/datasources/firebase_car_data_source.dart';
import 'package:car_agency_app/domain/repositories/car_repository.dart';

import '../models/car.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }

}