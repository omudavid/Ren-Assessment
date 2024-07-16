import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/city.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/no_param.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_params.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_response.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_cities_from_json_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_cities_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/get_weather_usecase.dart';
import 'package:renmoney_assessment/src/features/weather/domain/usecases/save_cities_usecase.dart';

part 'weather_cubit.freezed.dart';
part 'weather_cubit_state.dart';

class WeatherCubit extends Cubit<WeatherCubitState> {
  WeatherCubit(
    this._getWeatherUsecase,
    this._getCitiesUsecase,
    this._getCitiesFromJsonUsecase,
    this._saveCitiesUsecase,
  ) : super(_Initial()) {
    init();
  }

  final GetWeatherUsecase _getWeatherUsecase;
  final GetCitiesUsecase _getCitiesUsecase;
  final GetCitiesFromJsonUsecase _getCitiesFromJsonUsecase;
  final SaveCitiesUsecase _saveCitiesUsecase;

  Future<void> init() async {
    final response = await _getCitiesFromJsonUsecase(NoParam());

    await response.fold((l) {
     ///Handle Error
    }, (r) {
      emit(state.copyWith(
        cities: r,
      ));
    });

    final response2 = await _getCitiesUsecase(NoParam());

    await response2.fold((l) {
      ///Handle Error
    }, (r) {
      if (r.isEmpty) {
        final cities = state.cities
            .where((e) => (e.city?.toLowerCase() == 'lagos' ||
                e.city?.toLowerCase() == 'abuja' ||
                e.city?.toLowerCase() == 'ibadan'))
            .toList();
        emit(state.copyWith(
          selectedCities: cities,
          appStartStatus: FormzSubmissionStatus.initial,
        ));
      } else {
        emit(state.copyWith(
            selectedCities: r, appStartStatus: FormzSubmissionStatus.initial));
      }
    });

    getCityWeather(state.selectedCities[0].city ?? '');
    //getCityWeather();
  }

  Future<void> getCityWeather(String city) async {
    emit(state.copyWith(
      fetchWeatherStatus: FormzSubmissionStatus.inProgress,
      weatherResponse: null,
    ));
    final citySelected = state.cities.firstWhere((e) => e.city == city);
    final response = await _getWeatherUsecase(WeatherParams(
        lat: citySelected.lat ?? '', lon: citySelected.lng ?? ''));
    response.fold((l) {
      ///Handle Error
    }, (r) {
      emit(state.copyWith(
          fetchWeatherStatus: FormzSubmissionStatus.initial,
          weatherResponse: r));
    });
  }

  void addCity(String city) {
    final citySelected = state.cities.firstWhere((e) => e.city == city);
    emit(state
        .copyWith(selectedCities: [...state.selectedCities, citySelected]));
    _saveCitiesUsecase(state.selectedCities);
  }

  void deleteCity(String city) {
    final cities = [...state.selectedCities]
      ..removeWhere((e) => e.city == city);
    emit(state.copyWith(selectedCities: cities));
    _saveCitiesUsecase(state.selectedCities);
  }

  void updateUnselectedCities() {
    final unselectedCities =
        state.cities.where((e) => !state.selectedCities.contains(e)).toList();
    emit(state.copyWith(unselectedCities: unselectedCities));
  }

  Future<void> getDeviceWeather() async {
    final permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.denied &&
        permission != LocationPermission.deniedForever) {
      emit(state.copyWith(
        fetchDeviceWeatherStatus: FormzSubmissionStatus.inProgress,
        deviceWeatherResponse: null,
      ));

      Position? position = await Geolocator.getLastKnownPosition();
      final response = await _getWeatherUsecase(WeatherParams(
          lat: position?.latitude.toString() ?? '',
          lon: position?.longitude.toString() ?? ''));
      response.fold((l) {
        ///Handle Error
      }, (r) {
        emit(state.copyWith(
            fetchDeviceWeatherStatus: FormzSubmissionStatus.initial,
            deviceWeatherResponse: r));
      });
    }
  }
}
