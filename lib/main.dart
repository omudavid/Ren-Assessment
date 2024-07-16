import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:renmoney_assessment/src/core/dependency_injection/dependency_injection.dart';
import 'package:renmoney_assessment/src/features/weather/data/local_storage/local_storage.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/bloc/weather_cubit/weather_cubit.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/pages/weather_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  await Hive.initFlutter();
  await locator<LocalStorage>().initDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => WeatherCubit(
        locator(),
        locator(),
        locator(),
        locator(),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: WeatherHomePage(),
      ),
    );
  }
}


