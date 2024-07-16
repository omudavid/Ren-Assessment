// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherCubitState {
  FormzSubmissionStatus get appStartStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchWeatherStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchDeviceWeatherStatus =>
      throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;
  List<City> get selectedCities => throw _privateConstructorUsedError;
  List<City> get unselectedCities => throw _privateConstructorUsedError;
  WeatherResponse? get weatherResponse => throw _privateConstructorUsedError;
  WeatherResponse? get deviceWeatherResponse =>
      throw _privateConstructorUsedError;
  City? get selectedCity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCubitStateCopyWith<WeatherCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCubitStateCopyWith<$Res> {
  factory $WeatherCubitStateCopyWith(
          WeatherCubitState value, $Res Function(WeatherCubitState) then) =
      _$WeatherCubitStateCopyWithImpl<$Res, WeatherCubitState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus appStartStatus,
      FormzSubmissionStatus fetchWeatherStatus,
      FormzSubmissionStatus fetchDeviceWeatherStatus,
      List<City> cities,
      List<City> selectedCities,
      List<City> unselectedCities,
      WeatherResponse? weatherResponse,
      WeatherResponse? deviceWeatherResponse,
      City? selectedCity});
}

/// @nodoc
class _$WeatherCubitStateCopyWithImpl<$Res, $Val extends WeatherCubitState>
    implements $WeatherCubitStateCopyWith<$Res> {
  _$WeatherCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStartStatus = null,
    Object? fetchWeatherStatus = null,
    Object? fetchDeviceWeatherStatus = null,
    Object? cities = null,
    Object? selectedCities = null,
    Object? unselectedCities = null,
    Object? weatherResponse = freezed,
    Object? deviceWeatherResponse = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_value.copyWith(
      appStartStatus: null == appStartStatus
          ? _value.appStartStatus
          : appStartStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchWeatherStatus: null == fetchWeatherStatus
          ? _value.fetchWeatherStatus
          : fetchWeatherStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchDeviceWeatherStatus: null == fetchDeviceWeatherStatus
          ? _value.fetchDeviceWeatherStatus
          : fetchDeviceWeatherStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      selectedCities: null == selectedCities
          ? _value.selectedCities
          : selectedCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      unselectedCities: null == unselectedCities
          ? _value.unselectedCities
          : unselectedCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      weatherResponse: freezed == weatherResponse
          ? _value.weatherResponse
          : weatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      deviceWeatherResponse: freezed == deviceWeatherResponse
          ? _value.deviceWeatherResponse
          : deviceWeatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherCubitStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus appStartStatus,
      FormzSubmissionStatus fetchWeatherStatus,
      FormzSubmissionStatus fetchDeviceWeatherStatus,
      List<City> cities,
      List<City> selectedCities,
      List<City> unselectedCities,
      WeatherResponse? weatherResponse,
      WeatherResponse? deviceWeatherResponse,
      City? selectedCity});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherCubitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStartStatus = null,
    Object? fetchWeatherStatus = null,
    Object? fetchDeviceWeatherStatus = null,
    Object? cities = null,
    Object? selectedCities = null,
    Object? unselectedCities = null,
    Object? weatherResponse = freezed,
    Object? deviceWeatherResponse = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_$InitialImpl(
      appStartStatus: null == appStartStatus
          ? _value.appStartStatus
          : appStartStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchWeatherStatus: null == fetchWeatherStatus
          ? _value.fetchWeatherStatus
          : fetchWeatherStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchDeviceWeatherStatus: null == fetchDeviceWeatherStatus
          ? _value.fetchDeviceWeatherStatus
          : fetchDeviceWeatherStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      selectedCities: null == selectedCities
          ? _value._selectedCities
          : selectedCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      unselectedCities: null == unselectedCities
          ? _value._unselectedCities
          : unselectedCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      weatherResponse: freezed == weatherResponse
          ? _value.weatherResponse
          : weatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      deviceWeatherResponse: freezed == deviceWeatherResponse
          ? _value.deviceWeatherResponse
          : deviceWeatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.appStartStatus = FormzSubmissionStatus.inProgress,
      this.fetchWeatherStatus = FormzSubmissionStatus.initial,
      this.fetchDeviceWeatherStatus = FormzSubmissionStatus.initial,
      final List<City> cities = const <City>[],
      final List<City> selectedCities = const <City>[],
      final List<City> unselectedCities = const <City>[],
      this.weatherResponse,
      this.deviceWeatherResponse,
      this.selectedCity})
      : _cities = cities,
        _selectedCities = selectedCities,
        _unselectedCities = unselectedCities;

  @override
  @JsonKey()
  final FormzSubmissionStatus appStartStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchWeatherStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchDeviceWeatherStatus;
  final List<City> _cities;
  @override
  @JsonKey()
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<City> _selectedCities;
  @override
  @JsonKey()
  List<City> get selectedCities {
    if (_selectedCities is EqualUnmodifiableListView) return _selectedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCities);
  }

  final List<City> _unselectedCities;
  @override
  @JsonKey()
  List<City> get unselectedCities {
    if (_unselectedCities is EqualUnmodifiableListView)
      return _unselectedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unselectedCities);
  }

  @override
  final WeatherResponse? weatherResponse;
  @override
  final WeatherResponse? deviceWeatherResponse;
  @override
  final City? selectedCity;

  @override
  String toString() {
    return 'WeatherCubitState.initial(appStartStatus: $appStartStatus, fetchWeatherStatus: $fetchWeatherStatus, fetchDeviceWeatherStatus: $fetchDeviceWeatherStatus, cities: $cities, selectedCities: $selectedCities, unselectedCities: $unselectedCities, weatherResponse: $weatherResponse, deviceWeatherResponse: $deviceWeatherResponse, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.appStartStatus, appStartStatus) ||
                other.appStartStatus == appStartStatus) &&
            (identical(other.fetchWeatherStatus, fetchWeatherStatus) ||
                other.fetchWeatherStatus == fetchWeatherStatus) &&
            (identical(
                    other.fetchDeviceWeatherStatus, fetchDeviceWeatherStatus) ||
                other.fetchDeviceWeatherStatus == fetchDeviceWeatherStatus) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._selectedCities, _selectedCities) &&
            const DeepCollectionEquality()
                .equals(other._unselectedCities, _unselectedCities) &&
            (identical(other.weatherResponse, weatherResponse) ||
                other.weatherResponse == weatherResponse) &&
            (identical(other.deviceWeatherResponse, deviceWeatherResponse) ||
                other.deviceWeatherResponse == deviceWeatherResponse) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appStartStatus,
      fetchWeatherStatus,
      fetchDeviceWeatherStatus,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_selectedCities),
      const DeepCollectionEquality().hash(_unselectedCities),
      weatherResponse,
      deviceWeatherResponse,
      selectedCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)
        initial,
  }) {
    return initial(
        appStartStatus,
        fetchWeatherStatus,
        fetchDeviceWeatherStatus,
        cities,
        selectedCities,
        unselectedCities,
        weatherResponse,
        deviceWeatherResponse,
        selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)?
        initial,
  }) {
    return initial?.call(
        appStartStatus,
        fetchWeatherStatus,
        fetchDeviceWeatherStatus,
        cities,
        selectedCities,
        unselectedCities,
        weatherResponse,
        deviceWeatherResponse,
        selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus appStartStatus,
            FormzSubmissionStatus fetchWeatherStatus,
            FormzSubmissionStatus fetchDeviceWeatherStatus,
            List<City> cities,
            List<City> selectedCities,
            List<City> unselectedCities,
            WeatherResponse? weatherResponse,
            WeatherResponse? deviceWeatherResponse,
            City? selectedCity)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          appStartStatus,
          fetchWeatherStatus,
          fetchDeviceWeatherStatus,
          cities,
          selectedCities,
          unselectedCities,
          weatherResponse,
          deviceWeatherResponse,
          selectedCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherCubitState {
  const factory _Initial(
      {final FormzSubmissionStatus appStartStatus,
      final FormzSubmissionStatus fetchWeatherStatus,
      final FormzSubmissionStatus fetchDeviceWeatherStatus,
      final List<City> cities,
      final List<City> selectedCities,
      final List<City> unselectedCities,
      final WeatherResponse? weatherResponse,
      final WeatherResponse? deviceWeatherResponse,
      final City? selectedCity}) = _$InitialImpl;

  @override
  FormzSubmissionStatus get appStartStatus;
  @override
  FormzSubmissionStatus get fetchWeatherStatus;
  @override
  FormzSubmissionStatus get fetchDeviceWeatherStatus;
  @override
  List<City> get cities;
  @override
  List<City> get selectedCities;
  @override
  List<City> get unselectedCities;
  @override
  WeatherResponse? get weatherResponse;
  @override
  WeatherResponse? get deviceWeatherResponse;
  @override
  City? get selectedCity;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
