import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/hedeth/hedeth.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/quran/quran.dart';
import 'package:task5/radio/radio.dart';
import 'package:task5/sebha/sebha.dart';

class  homeScreen extends StatefulWidget{
  static const  String routeName = "home-screen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex =0;


  @override
  Widget build(BuildContext context) {
    return
          Stack(
            children: [
              Image.asset("assets/images/background.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
                ),
            Scaffold(
              body: tabs[selectedIndex],
              appBar: AppBar(
                title: Text("Islami",
                style: Theme.of(context).textTheme.titleLarge,),
              ),
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
                child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  iconSize: 35,
                  onTap: (index)
                  {
                    selectedIndex = index;
                    setState(() {

                    });
                  },
                  items: [
                    BottomNavigationBarItem(icon:ImageIcon(
                      AssetImage("assets/images/quran.png"),
                    ),
                    label: "Quran",
                    ),

                    BottomNavigationBarItem(icon:ImageIcon(
                      AssetImage("assets/images/hedeth.png"),
                    ),
                    label:"Hedeth" ,
                    ),

                    BottomNavigationBarItem(icon:ImageIcon(
                      AssetImage("assets/images/sebha.png"),
                    ),
                      label: "Sebha",
                    ),

                    BottomNavigationBarItem(icon:ImageIcon(
                      AssetImage("assets/images/radio.png"),
                    ),
                      label:"Radio",
                    ),

                  ],
                ),
              ),
            ),
            ],
          );
    //
    // );
  }

}

List<Widget> tabs = [quranTab(),hedethTap(),sebhaTab(),radioTab()];