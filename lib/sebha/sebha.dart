import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int count = 0;
  int count2 = 0;
  double angleOfRotate = 0;
  List<String> names = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا إله إلا الله"
  ];
  String name = 'سبحان الله';
  int i = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Stack(
          children: [
            Center(
                child: provider.AppTheme == ThemeMode.light
                    ? ImageIcon(AssetImage("assets/images/head_of_seb7a.png"),
                        size: 120, color: myTheme.primaryLight)
                    : ImageIcon(
                        AssetImage("assets/images/dark_head_of_seb7a.png"),
                        size: 120,
                        color: myTheme.yellowColor)),
            InkWell(
              child: Transform.rotate(
                  angle: angleOfRotate,
                  child: provider.AppTheme == ThemeMode.light
                      ? ImageIcon(
                          AssetImage("assets/images/dark_body_of_seb7a.png"),
                          size: 400,
                          color: myTheme.primaryLight)
                      : ImageIcon(
                          AssetImage("assets/images/dark_body_of_seb7a.png"),
                          size: 400,
                          color: myTheme.yellowColor)),
                onTap: () {
                  count = count + 1;
                angleOfRotate = angleOfRotate + 30;
                count2++;

                if (count < 33) {
                  name = names[0];
                } else if (count2 == 33) {
                  count2 = 0;
                  i++;
                  if (i == 4) {
                    i = 0;
                  }
                  name = names[i];
                }
                setState(() {});
              },
            ),
          ],
        ),
        Text(
          AppLocalizations.of(context)!.tsbeh,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 90.0,
          width: 90.0,
          child: Center(
              child: Text(
            "$count",
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor.withOpacity(0.57),
          ),
        ),
        SizedBox(
          height: 10,
        ),
          Container(
            height: 80.0,
          width: 150.0,
          child: Center(
            child: Text(
              "${name}",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: myTheme.blackColor),
              textAlign: TextAlign.center,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: provider.AppTheme == ThemeMode.light
                ? myTheme.primaryLight
                : myTheme.yellowColor,
          ),
        ),


        ],
      );
  }
}