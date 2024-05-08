import 'package:flutter/material.dart';

class ThemeService {
  static bool _isDarkMode = false;

  static void toggleTheme() {
    _isDarkMode = !_isDarkMode;
  }

  static ThemeData generateLightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      useMaterial3: true,
    );
  }

  static ThemeData get themeData =>
      _isDarkMode ? ThemeData.dark() : generateLightTheme();
}
