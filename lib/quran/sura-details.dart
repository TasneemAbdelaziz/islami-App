import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task5/providers/app_config_provider.dart';

class suraDetails extends StatefulWidget {
  static String routeName = "SuraDetails";

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    var screenSize = MediaQuery.of(context).size;
    var provider = Provider.of<AppConfigProvider>(context);

    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Stack(
      children: [
        provider.AppTheme == ThemeMode.light
            ? Image.asset(
                "assets/images/background.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                "assets/images/bg_dark.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
              ):
          Center(
            child: SizedBox(
                    height: screenSize.height - 170,
                    width: screenSize.width - 40,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: provider.AppTheme == ThemeMode.light
                            ? myTheme.whiteColor.withOpacity(0.8)
                            : myTheme.primaryDark.withOpacity(0.8),
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
                            color: provider.AppTheme == ThemeMode.light
                                ? Theme.of(context).primaryColor
                                : myTheme.yellowColor,
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