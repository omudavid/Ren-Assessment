import 'package:dartz/dartz.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';
import 'package:renmoney_assessment/src/core/utils/use_case.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_params.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_response.dart';
import 'package:renmoney_assessment/src/features/weather/domain/repository/weather_repository.dart';

class GetWeatherUsecase implements UseCase<WeatherResponse, WeatherParams> {
  final WeatherRepository repository;

  GetWeatherUsecase({required this.repository});

  @override
  Future<Either<Failure, WeatherResponse>> call(WeatherParams param) {
    return repository.getWeather(param);
  }
}
