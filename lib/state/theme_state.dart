import 'package:flutter/material.dart';

class ThemeState with ChangeNotifier {
  bool _isDarkModeEnable = false;

  ThemeData get currentTheme =>
      _isDarkModeEnable ? ThemeData.dark() : ThemeData.light();

  bool get isDarkModeEnable => _isDarkModeEnable;

  void setDarkMode(bool b) {
    _isDarkModeEnable = b;
    notifyListeners();
  }
}
