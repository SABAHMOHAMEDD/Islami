import 'package:flutter/material.dart';

class MyTheme {
  static final Color PrimaryColor = Color(0xFFB7935F);

  static final ThemeData LightTheme = ThemeData(

      primaryColor: PrimaryColor,

      scaffoldBackgroundColor: Colors.transparent,

      textTheme: const TextTheme(

          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 18,
            //   fontWeight: FontWeight.w500,
          ),
        headline4: TextStyle(
          fontSize: 28,
          color: Colors.black,
         //   fontWeight: FontWeight.w500,
        ),
          headline5: TextStyle(

              fontSize: 25,
              color: Colors.black
          )

      ),

      appBarTheme: const AppBarTheme(

        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500

        )
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelStyle: TextStyle(color: Colors.black)


      ));


}
