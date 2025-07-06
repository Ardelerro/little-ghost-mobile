class Settings {
  double temperature;
  bool lightsOn;
  bool gestureControlEnabled;

  Settings({
    required this.temperature,
    required this.lightsOn,
    required this.gestureControlEnabled,
  });

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        temperature: json['temperature'].toDouble(),
        lightsOn: json['lightsOn'],
        gestureControlEnabled: json['gestureControlEnabled'],
      );

  Map<String, dynamic> toJson() => {
        'temperature': temperature,
        'lightsOn': lightsOn,
        'gestureControlEnabled': gestureControlEnabled,
      };
}