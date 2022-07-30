import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.RouteName ,
      routes:{
        HomeScreen.RouteName :(_)=>HomeScreen(),

      } ,


    );


  }}



