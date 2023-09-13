import 'package:flutter/material.dart';
import 'package:task5/home/home_screen.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/quran/sura-details.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:homeScreen.routeName ,
      routes:{
        homeScreen.routeName : (context)=>homeScreen(),
        suraDetails.routeName : (context)=>suraDetails(),
      },
      theme: myTheme.lightTheme,
    );
  }

}
