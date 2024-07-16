import 'package:dartz/dartz.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';
import 'package:renmoney_assessment/src/core/utils/use_case.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/city.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/no_param.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_params.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_response.dart';
import 'package:renmoney_assessment/src/features/weather/domain/repository/weather_repository.dart';

class GetCitiesFromJsonUsecase implements UseCase<List<City>, NoParam> {
  final WeatherRepository repository;

  GetCitiesFromJsonUsecase({required this.repository});

  @override
  Future<Either<Failure, List<City>>> call(NoParam param) {
    return repository.getCitiesFromJson();
  }
}
