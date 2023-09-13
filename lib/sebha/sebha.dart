import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/my_theme.dart';


class sebhaTab extends StatefulWidget{
  @override
  State<sebhaTab> createState() => _sebhaTabState();

}

class _sebhaTabState extends State<sebhaTab> {
  int count = 0;
  double angleOfRotate = 0;
  List<String> names = ["سبحان الله","الحمد لله","الله اكبر"];
  String name ='';


  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [

            Stack(
              children: [
                Center(child: ImageIcon(AssetImage("assets/images/head_of_seb7a.png"),size: 120,color: myTheme.primaryLight)),
            InkWell(
                child: Transform.rotate(
                    angle: angleOfRotate,
                    child: ImageIcon(AssetImage("assets/images/body_of_seb7a.png"),size: 400,color: myTheme.primaryLight)
                ),
              onTap: ()
              {
                count = count+1;
                angleOfRotate = angleOfRotate +30;
                if(count <= 30)
                  {
                    name = names[0];
                  }
                else if(count <= 60)
                  {
                    name = names[1];
                  }
                else{
                  name = names[2];
                }

                setState(() {

                });
              },
            ),
            ],
            ),
            Text("عدد التسبيحات",style: Theme.of(context).textTheme.titleSmall,),
            Container(
              height: 90.0,
              width: 90.0,
                child: Center(child: Text("$count",style:Theme.of(context).textTheme.titleSmall ,textAlign: TextAlign.center,)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: myTheme.primaryLight.withOpacity(0.57),
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80.0,
              width: 150.0,

              child: Center(child:Text("${name}",style:Theme.of(context).textTheme.bodyMedium ,textAlign: TextAlign.center,),),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: myTheme.primaryLight,
              ),
            ),


          ],
        );
  }
}