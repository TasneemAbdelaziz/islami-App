import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task5/my_theme.dart';

class suraDetails extends StatefulWidget{
  static String routeName = "SuraDetails";

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;

    if(verses.isEmpty)
      {
        loadFile(args.index);
      }

    return Stack(
          children: [
          Image.asset("assets/images/background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
        appBar: AppBar(
        title: Text("Islami",
        style: Theme.of(context).textTheme.titleLarge,),
    ),
          body:
          verses.length==0 ?
              Center(child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,

              ),
              ):
          Center(
            child: SizedBox(
              height: 652,
              width: 354,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: myTheme.whiteColor.withOpacity(0.8),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('سورة ${args.name}',style:Theme.of(context).textTheme.titleSmall,),
                        SizedBox(width: 20,),
                        ImageIcon(AssetImage("assets/images/Icon awesome-play-circle.png")),

                      ],
                    ),
                    Divider(
                      height: 30,
                      endIndent: 40,
                      indent: 40,
                      thickness: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      // child: Padding(
                      //   padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
                        child: ListView.builder(
                              itemBuilder: (context, index) {
                                 return Text('${verses[index]}{${index + 1}}',
                                   style:
                                     Theme.of(context).textTheme.bodySmall,
                                   textAlign:TextAlign.center,
                                   textDirection: TextDirection.rtl,
                                 );
                              },
                              itemCount: verses.length,
                        ),
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
          ],
    );
  }

  void loadFile(int index)async
  {
    String content = await rootBundle.loadString("assets/suraFiles/${index+1}.txt");
    List<String>lines = content.split("\n");
    print(lines);
    verses = lines;
    setState(() {

    });
  }
}

class suraDetailsArgs
{
  String name;
  int index;

  suraDetailsArgs({required this.name , required this.index});

}