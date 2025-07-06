import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF6A0DAD),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF6A0DAD),
      secondary: const Color(0xFF9575CD),
    ),
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: const Color(0xFFF3F0F9),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF6A0DAD),
      foregroundColor: Colors.white,
      elevation: 2,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xFF6A0DAD),
      thumbColor: const Color(0xFF6A0DAD),
      overlayColor: const Color(0x296A0DAD),
      inactiveTrackColor: const Color(0xFFB39DDB),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(const Color(0xFF6A0DAD)),
      trackColor: MaterialStateProperty.all(const Color(0xFFB39DDB)),
    ),
  );
}