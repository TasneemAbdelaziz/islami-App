import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';

class radioTab extends StatelessWidget {
  static String routeName = "radio";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        Text(
          AppLocalizations.of(context)!.radio_title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage("assets/images/metro-next.png"),
              color: provider.AppTheme == ThemeMode.light
                  ? myTheme.primaryLight
                  : myTheme.yellowColor,
            ),
            SizedBox(
              width: 80,
            ),
            ImageIcon(
              AssetImage("assets/images/play.png"),
              color: provider.AppTheme == ThemeMode.light
                  ? myTheme.primaryLight
                  : myTheme.yellowColor,
            ),
            SizedBox(
              width: 80,
            ),
            ImageIcon(
              AssetImage("assets/images/metro-before.png"),
              color: provider.AppTheme == ThemeMode.light
                  ? myTheme.primaryLight
                  : myTheme.yellowColor,
            ),
          ],
          ),

        ],
      );
  }

}