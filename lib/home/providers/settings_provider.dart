import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{

  String CurrentLang = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void ChangeTheme(newTheme) async {
    final prefs = await SharedPreferences.getInstance();

    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme;
    prefs.setString(
        'theme', currentTheme == ThemeMode.light ? 'light' : 'dark');

    notifyListeners();
  }

  void ChangeLang(String NewLang) async {
    final prefs = await SharedPreferences.getInstance();

    if (NewLang == CurrentLang) {
      return;
    }
    CurrentLang = NewLang;
    prefs.setString('lang', CurrentLang);

    notifyListeners();
  }

  bool isDarkMode() {

    return currentTheme==ThemeMode.dark;
}

  String GetBackGround(){
    return  isDarkMode()? 'assets/images/background_dark.png':
        'assets/images/background_pattern.png';


  }
}
