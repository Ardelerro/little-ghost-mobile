import 'package:flutter/material.dart';
import '../models/settings.dart';
import '../services/api_service.dart';

class SettingsProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  Settings _settings = Settings(
    temperature: 22.0,
    lightsOn: false,
    gestureControlEnabled: false,
  );

  Settings get settings => _settings;

  void setTemperature(double value) {
    _settings.temperature = value;
    notifyListeners();
    _apiService.updateSettings(_settings);
  }

  void toggleLights() {
    _settings.lightsOn = !_settings.lightsOn;
    notifyListeners();
    _apiService.updateSettings(_settings);
  }

  void toggleGestureControl() {
    _settings.gestureControlEnabled = !_settings.gestureControlEnabled;
    notifyListeners();
    _apiService.updateSettings(_settings);
  }

  Future<void> loadSettings() async {
    _settings = await _apiService.fetchSettings();
    notifyListeners();
  }
}