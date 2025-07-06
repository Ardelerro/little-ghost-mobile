import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/settings_provider.dart';

class TemperatureSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        const Text("Temperature"),
        Slider(
          min: 10,
          max: 35,
          value: provider.settings.temperature,
          onChanged: (value) => provider.setTemperature(value),
        ),
      ],
    );
  }
}