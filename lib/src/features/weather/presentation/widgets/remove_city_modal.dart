import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/bloc/weather_cubit/weather_cubit.dart';
import 'package:renmoney_assessment/src/features/weather/presentation/widgets/app_button.dart';

class RemoveCityModal extends HookWidget {
  const RemoveCityModal({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String?> selectedCity = useState(null);
    return BlocBuilder<WeatherCubit, WeatherCubitState>(
        builder: (context, state) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    value: selectedCity.value,
                    items: (state.selectedCities.map((e) => e.city!).toList())
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      selectedCity.value =val;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppButton(
                      enabled: selectedCity.value!=null,
                      onPressed: () {
                        context.read<WeatherCubit>().deleteCity(selectedCity.value!);
                        Navigator.of(context).pop();
                      },
                      title: 'Remove City')
                ],
              ),
            ),
          );
        });
  }
}
