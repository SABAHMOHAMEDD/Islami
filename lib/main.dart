import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/hadeth_details_widget.dart';
import 'package:islami/home/quran/sura_details.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/mytheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/providers/settings_provider.dart';



void main() {
  runApp( ChangeNotifierProvider<SettingsProvider>(
    create: (buildContext){return SettingsProvider();},
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {

  late SettingsProvider SettingsPovider;

  @override
  Widget build(BuildContext context) {
    SettingsPovider = Provider.of<SettingsProvider>(context);
    getvaluefromshared();
    return MaterialApp(
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: SettingsPovider.currentTheme,
      initialRoute: HomeScreen.RouteName,
      routes: {
        HomeScreen.RouteName: (_) => HomeScreen(),
        SuraDetailsScreen.RouteName: (_) => SuraDetailsScreen(),
        HadethDetailsWidget.RouteName: (_) => HadethDetailsWidget(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(SettingsPovider.CurrentLang),
    );
  }

  void getvaluefromshared() async {
    final prefs = await SharedPreferences.getInstance();

    SettingsPovider.ChangeLang(prefs.getString('lang') ?? 'ar');

    if (prefs.getString('theme') == 'light') {
      SettingsPovider.ChangeTheme(ThemeMode.light);
    } else if (prefs.getString('theme') == 'dark') {
      SettingsPovider.ChangeTheme(ThemeMode.dark);
    }
  }
}
