import 'package:flutter/material.dart';

class ThemeState with ChangeNotifier {
  bool _isDarkModeEnable = false;

  ThemeData get currentTheme => _isDarkModeEnable
      ? ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.blue[900],
          bottomAppBarColor: Colors.blue[900])
      : ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.blue[900],
          primaryColor: Colors.blue[900]);

  bool get isDarkModeEnable => _isDarkModeEnable;

  void setDarkMode(bool b) {
    _isDarkModeEnable = b;
    notifyListeners();
  }
}
