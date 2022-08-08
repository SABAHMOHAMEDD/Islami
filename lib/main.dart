import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/home/hadeth/hadeth_details_widget.dart';
import 'package:islami/home/quran/sura_details.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'home/providers/settings_provider.dart';



void main() {
  runApp( ChangeNotifierProvider<SettingsProvider>(
    create: (buildContext){return SettingsProvider();},
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var SettingsPovider=Provider.of<SettingsProvider>(context);

    return MaterialApp(
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: SettingsPovider.currentTheme,
      initialRoute: HomeScreen.RouteName ,
      routes:{
        HomeScreen.RouteName :(_)=>HomeScreen(),
        SuraDetailsScreen.RouteName:(_)=>SuraDetailsScreen(),
        HadethDetailsWidget.RouteName: (_)=>HadethDetailsWidget(),
      } ,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

       locale: Locale(SettingsPovider.CurrentLang),

    );


  }}



