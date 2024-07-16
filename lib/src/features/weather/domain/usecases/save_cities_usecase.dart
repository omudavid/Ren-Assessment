import 'package:dartz/dartz.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';
import 'package:renmoney_assessment/src/core/utils/use_case.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/city.dart';
import 'package:renmoney_assessment/src/features/weather/domain/repository/weather_repository.dart';

class SaveCitiesUsecase implements UseCase<dynamic, List<City>> {
  final WeatherRepository repository;

  SaveCitiesUsecase({required this.repository});

  @override
  Future<Either<Failure, dynamic>> call(List<City> param) {
    return repository.saveCities(param);
  }
}
