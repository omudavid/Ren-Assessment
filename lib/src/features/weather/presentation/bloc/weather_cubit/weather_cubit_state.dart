part of 'weather_cubit.dart';

@freezed
class WeatherCubitState with _$WeatherCubitState {
  const factory WeatherCubitState.initial({
    @Default(FormzSubmissionStatus.inProgress) FormzSubmissionStatus appStartStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus fetchWeatherStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus fetchDeviceWeatherStatus,
    @Default(<City>[]) List<City> cities,
    @Default(<City>[]) List<City> selectedCities,
    @Default(<City>[]) List<City> unselectedCities,
    WeatherResponse? weatherResponse,
    WeatherResponse? deviceWeatherResponse,
    City? selectedCity,
  }) = _Initial;
}