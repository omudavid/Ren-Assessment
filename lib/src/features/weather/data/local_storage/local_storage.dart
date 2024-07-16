import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:renmoney_assessment/src/core/constants/app_constants.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/city.dart';

class LocalStorage {
  late Box<String> _box;

  Future<void> initDB() async {
    _box = await Hive.openBox('card_box_0');
  }

  Future<Either<Failure, List<City>>> getCities() async {
    try {
      final json = _box.get(AppConstants.key);
      if (json != null) {
        final data = jsonDecode(json) as List<dynamic>;
        final cities = data.map((e) => City.fromJson(e)).toList();
        return Right(cities);
      }
      return Right([]);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<Failure, dynamic>> saveCities(
      {required List<City> data}) async {
    try {
      final json = jsonEncode(data);
      await _box.put(AppConstants.key, json);
      return Right(true);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<Failure, List<City>>> getCitiesFromJson() async {
    try {
      final String response =
          await rootBundle.loadString('assets/jsons/ng.json');
      final data = await json.decode(response) as List<dynamic>;
      final cities = data.map((json) => City.fromJson(json)).toList();
      return Right(cities);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
