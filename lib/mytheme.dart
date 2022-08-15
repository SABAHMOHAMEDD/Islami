import 'package:flutter/material.dart';

class MyTheme {
  static final Color ColorGold = Color  (0xFFB7935F);
  static final Color ColorYellow = Color(0xFFFACC1D);
  static final ColorDarkBlue  = Color(0xFF141A2E);



  static final ThemeData LightTheme = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: ColorGold,
      cardColor: Colors.black,
      scaffoldBackgroundColor: Colors.transparent,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          //hadeth &quran names
          color: Colors.black,
          fontSize: 25,
          //   fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          //hadeth &quran names
          color: Colors.black,
          fontSize: 25,
          //   fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          //hadeth&quran content
          fontSize: 20,
          color: Colors.black,
          //   fontWeight: FontWeight.w500,
        ),
        headline3: TextStyle(
          fontSize: 22,
          color: Colors.black,
          //   fontWeight: FontWeight.w500,
        ),
        headline5: TextStyle(fontSize: 25, color: Colors.black),
        headline6: TextStyle(
            //for sebha page

            fontSize: 25,
            color: Colors.black),
        headline1: TextStyle(
            //for sebha page/ el tasbeh

            fontSize: 25,
            color: Colors.white),
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

      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          backgroundColor: ColorGold,

          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor:Colors.black       //El line daaaaaa


      ));

  static final ThemeData DarkTheme = ThemeData(
      backgroundColor: ColorDarkBlue,
      cardColor: ColorYellow,
      primaryColor: ColorYellow,
      scaffoldBackgroundColor: Colors.transparent,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: ColorDarkBlue),
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Colors.white,
          fontSize: 25,
          //   fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 25,
          //   fontWeight: FontWeight.w500,
        ),
        headline2: TextStyle(
          // for hadeth header
          fontSize: 25,
          color: ColorYellow,
          //   fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 20,
          color: ColorYellow,
          //   fontWeight: FontWeight.w500,
        ),
        headline3: TextStyle(
          // for settings page
          fontSize: 22,
          color: Colors.white,
          //   fontWeight: FontWeight.w500,
        ),
        headline5: TextStyle(
            //for quran& hadeth content

            fontSize: 25,
            color: ColorYellow),
        headline6: TextStyle(
            //for sebha page

            fontSize: 25,
            color: Colors.white),
        headline1: TextStyle(
            //for sebha page/ el tasbeh

            fontSize: 25,
            color: Colors.black),
      ),

      appBarTheme: const AppBarTheme(

          iconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500

          )
      ),

      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        backgroundColor: ColorDarkBlue,
          selectedIconTheme: IconThemeData(color: ColorYellow),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          selectedLabelStyle: TextStyle(color: ColorYellow),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: ColorYellow,


      ));


}
