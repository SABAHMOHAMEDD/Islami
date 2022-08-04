import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.LightTheme,
      initialRoute: HomeScreen.RouteName ,
      routes:{
        HomeScreen.RouteName :(_)=>HomeScreen(),
        SuraDetailsScreen.RouteName:(_)=>SuraDetailsScreen(),
      } ,


    );


  }}



