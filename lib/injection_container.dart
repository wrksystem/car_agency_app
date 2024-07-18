import 'package:car_agency_app/data/repositories/car_repository_impl.dart';
import 'package:car_agency_app/domain/repositories/car_repository.dart';
import 'package:car_agency_app/presentation/bloc/car_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'data/datasources/firebase_car_data_source.dart';
import 'domain/usecases/get_cars.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FirebaseCarDataSource>(
        () => FirebaseCarDataSource(firestore: getIt<FirebaseFirestore>())
    );
    getIt.registerLazySingleton<CarRepository>(
            () => CarRepositoryImpl(getIt<FirebaseCarDataSource>())
    );
    getIt.registerLazySingleton<GetCars>(
            () => GetCars(getIt<CarRepository>())
    );
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));

  } catch (e) {
    throw e;
  }
}
