import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/bloc/weather_cubit/weather_cubit.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/widgets/add_city_modal.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/widgets/app_button.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/widgets/remove_city_modal.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  static const images = [
    'background_1.jpg',
    'background_2.jpg',
    'background_3.jpg',
    'background_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherCubitState>(
        builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                  itemCount: state.selectedCities.length,
                  itemBuilder: (_, __, index) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/${images[index % 4]}'),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        state.selectedCities[index].city ?? '',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.7,
                    height: 200,
                    enlargeFactor: 0.5,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    padEnds: true,
                    pageSnapping: true,
                    onPageChanged: (index, reason) {
                      context.read<WeatherCubit>().getCityWeather(
                          state.selectedCities[index].city ?? '');
                    },
                  ),
                  //carouselController: carouselController,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                          onPressed: () {
                            context
                                .read<WeatherCubit>()
                                .updateUnselectedCities();
                            showDialog(
                              context: context,
                              builder: (_) => AddCityModal(),
                            );
                          },
                          title: 'Add City'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: AppButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => RemoveCityModal(),
                            );
                          },
                          title: 'Remove City'),
                    )
                  ],
                ),
                BlocBuilder<WeatherCubit, WeatherCubitState>(
                    builder: (_, state) {
                  if (state.fetchWeatherStatus.isInProgress) {
                    return SizedBox(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (state.weatherResponse == null) {
                    return SizedBox();
                  }
                  return Column(
                    children: [
                      Text('Weather ${state.weatherResponse?.name}'),
                      Text(
                        'Coordinates Lon ${state.weatherResponse?.coord?.lon}, Lat ${state.weatherResponse?.coord?.lat}',
                      ),
                      Text(
                          'Description : ${state.weatherResponse?.weather?[0].description}'),
                      Text(
                        'Temp : ${state.weatherResponse?.main?.temp}',
                      ),
                      Text(
                        'Humidity : ${state.weatherResponse?.main?.temp}',
                      )
                    ],
                  );
                }),
                SizedBox(
                  height: 30,
                ),
                AppButton(
                    onPressed: () {
                      context.read<WeatherCubit>().getDeviceWeather();
                    },
                    title: 'Get Device Location Weather'),
                SizedBox(
                  height: 20,
                ),
                BlocBuilder<WeatherCubit, WeatherCubitState>(
                    builder: (_, state) {
                  if (state.fetchDeviceWeatherStatus.isInProgress) {
                    return SizedBox(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (state.deviceWeatherResponse == null) {
                    return SizedBox();
                  }
                  return Column(
                    children: [
                      Text('Weather ${state.deviceWeatherResponse?.name}'),
                      Text(
                        'Coordinates Lon ${state.deviceWeatherResponse?.coord?.lon}, Lat ${state.deviceWeatherResponse?.coord?.lat}',
                      ),
                      Text(
                          'Description : ${state.deviceWeatherResponse?.weather?[0].description}'),
                      Text(
                        'Temp : ${state.deviceWeatherResponse?.main?.temp}',
                      ),
                      Text(
                        'Humidity : ${state.deviceWeatherResponse?.main?.temp}',
                      )
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      );
    });
  }
}
