import 'package:flutter/material.dart';

class myTheme{
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);





  static ThemeData lightTheme = ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: primaryLight,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
        ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor:whiteColor ,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: blackColor,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: blackColor,
      ),
        titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: blackColor,
        fontFamily: 'Monotype',
      ),
      bodySmall: TextStyle(
        height: 2,
        // textBaseline: TextBaseline.alphabetic,
        fontSize: 25,
        color: blackColor,
        fontFamily: "DecoType",
      ),
        bodyMedium: TextStyle(
          height: 2,
          fontSize: 25,
          color: whiteColor,
          fontWeight: FontWeight.bold,
          fontFamily: "DecoType",
        )
    ),


  );

}