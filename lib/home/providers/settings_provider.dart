import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  String CurrentLang='en';
  ThemeMode currentTheme= ThemeMode.light;
  void ChangeTheme(newTheme){
    if(newTheme==currentTheme){
      return;
    }
    currentTheme=newTheme;
    notifyListeners();
  }

  void ChangeLang(String NewLang){

     if(NewLang==CurrentLang){
     return;
    }
     CurrentLang =NewLang;
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
