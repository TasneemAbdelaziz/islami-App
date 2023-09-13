import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/my_theme.dart';

class radioTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Image.asset("assets/images/radio_image.png"),
          Text("إذاعة القرآن الكريم",style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ImageIcon(AssetImage("assets/images/metro-next.png"),color: myTheme.primaryLight,),
              SizedBox(width: 80,),
              ImageIcon(AssetImage("assets/images/play.png"),color: myTheme.primaryLight),
              SizedBox(width:80,),
              ImageIcon(AssetImage("assets/images/metro-before.png"),color: myTheme.primaryLight),
            ],
          ),

        ],
      );
  }

}