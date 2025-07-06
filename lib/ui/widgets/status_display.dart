import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/settings_provider.dart';

class StatusDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context).settings;
    return Column(
      children: [
        Text('Current Temp: ${settings.temperature.toStringAsFixed(1)}°C'),
        Text('Lights: ${settings.lightsOn ? "On" : "Off"}'),
      ],
    );
  }
}