import 'package:flutter/material.dart';

class myTheme{
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);

  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

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
        fontWeight: FontWeight.bold,
        fontSize: 30,
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
        color: blackColor,
        // fontWeight: FontWeight.bold,
        fontFamily: "KOUFIBD",
      ),
      bodyLarge: TextStyle(
        height: 2,
        fontSize: 25,
        color: whiteColor,
        fontWeight: FontWeight.bold,
        fontFamily: "DecoType",
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: myTheme.primaryDark),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryDark,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: whiteColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: whiteColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: whiteColor,
        fontFamily: 'Monotype',
      ),
      bodySmall: TextStyle(
        height: 2,
        // textBaseline: TextBaseline.alphabetic,
        fontSize: 25,
        color: yellowColor,
        // fontFamily: "DecoType",
      ),
      bodyMedium: TextStyle(
        height: 2,
        fontSize: 25,
        color: yellowColor,
        // fontWeight: FontWeight.bold,
        fontFamily: "KOUFIBD",
      ),
      bodyLarge: TextStyle(
        height: 2,
        fontSize: 25,
        color: whiteColor,
        fontWeight: FontWeight.bold,
        fontFamily: "DecoType",
      ),
    ),
  );
}