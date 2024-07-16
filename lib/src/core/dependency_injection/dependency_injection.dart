import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:renmoney_assessment/src/core/interceptors/response_interceptor.dart';
import 'package:renmoney_assessment/src/features/weather/data/client/weather_client.dart';
import 'package:renmoney_assessment/src/features/weather/data/local_storage/local_storage.dart';
import 'package:renmoney_assessment/src/features/weather/domain/repository/weather_repository.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_cities_from_json_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_cities_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_weather_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/save_cities_usecase.dart';

final locator = GetIt.instance;

Future<void> initialize() async {
  ///Client
  final _dio = Dio()
    ..interceptors.add(NetworkInterceptor(
        logger: Logger(
      printer: PrettyPrinter(),
    )));
  locator
    ..registerLazySingleton(() => _dio)
    ..registerLazySingleton<WeatherClient>(() => WeatherClient(locator()))
    ..registerLazySingleton<LocalStorage>(() => LocalStorage())
    ..registerLazySingleton<WeatherRepository>(() => WeatherRepository(
          client: locator(),
          localStorage: locator(),
        ))

    ///UseCases
    ..registerLazySingleton<GetWeatherUsecase>(() => GetWeatherUsecase(
          repository: locator(),
        ))
    ..registerLazySingleton<GetCitiesFromJsonUsecase>(
        () => GetCitiesFromJsonUsecase(
              repository: locator(),
            ))
    ..registerLazySingleton<GetCitiesUsecase>(() => GetCitiesUsecase(
          repository: locator(),
        ))
    ..registerLazySingleton<SaveCitiesUsecase>(() => SaveCitiesUsecase(
          repository: locator(),
        ));
}
