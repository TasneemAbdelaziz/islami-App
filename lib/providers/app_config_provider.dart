import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String AppLanguage = 'ar';
  ThemeMode AppTheme = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (newLanguage == AppLanguage) {
      return;
    } else {
      AppLanguage = newLanguage;
    }
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (AppTheme == newTheme) {
      return;
    } else {
      AppTheme = newTheme;
    }
    notifyListeners();
  }
}
