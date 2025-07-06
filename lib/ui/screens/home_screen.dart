import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/settings_provider.dart';
import '../widgets/temperature_slider.dart';
import '../widgets/gesture_toggle_button.dart';
import '../widgets/status_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF3F0F9),
      appBar: AppBar(
        title: const Text('Home Automation'),
        centerTitle: true,
        backgroundColor: const Color(0xFF6A0DAD),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatusDisplay(),
            const SizedBox(height: 30),
            TemperatureSlider(),
            const SizedBox(height: 20),
            GestureToggleButton(),
          ],
        ),
      ),
    );
  }
}