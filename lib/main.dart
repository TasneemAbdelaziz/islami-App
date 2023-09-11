import 'package:flutter/material.dart';
import 'package:task5/home_screen.dart';

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
        homeScreen.routeName : (context)=>homeScreen() ,
      },
    );
  }

}