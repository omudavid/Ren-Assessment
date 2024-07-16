import 'package:dartz/dartz.dart';
import 'package:renmoney_assessment/src/core/constants/app_constants.dart';
import 'package:renmoney_assessment/src/core/extensions/extensions.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';
import 'package:renmoney_assessment/src/features/weather/data/client/weather_client.dart';
import 'package:renmoney_assessment/src/features/weather/data/local_storage/local_storage.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/city.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_params.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_response.dart';

class WeatherRepository {
  final WeatherClient _client;
  final LocalStorage _localStorage;

  WeatherRepository({
    required WeatherClient client,
    required LocalStorage localStorage,
  })  : _client = client,
        _localStorage = localStorage;

  Future<Either<Failure, WeatherResponse>> getWeather(WeatherParams param) {
    return _client
        .getWeather(param.lat, param.lon, AppConstants.apiKey)
        .makeRequest();
  }

  Future<Either<Failure, List<City>>> getCities() {
    return _localStorage.getCities();
  }

  Future<Either<Failure, List<City>>> getCitiesFromJson()async {
    return await _localStorage.getCitiesFromJson();
  }

  Future<Either<Failure, dynamic>> saveCities(List<City> cities)async {
    return await _localStorage.saveCities(data: cities);
  }
}
