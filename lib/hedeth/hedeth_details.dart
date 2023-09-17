import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task5/hedeth/hedeth.dart';
import 'package:task5/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task5/providers/app_config_provider.dart';

class hedethDetils extends StatelessWidget {
  static String routeName = "hedethDetils";

// String title = '';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as hedeth;
    var screenSize = MediaQuery.of(context).size;

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
          )),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.title,
                    style: Theme.of(context).textTheme.titleLarge,
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
                    child: ListView.builder(
                      itemBuilder: (context, index) => Text(
                        args.body[index],
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      itemCount: args.body.length,
                    ),
                  ),
                ],
              ),
              height: screenSize.height - 170,
              width: screenSize.width - 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: provider.AppTheme == ThemeMode.light
                      ? myTheme.whiteColor.withOpacity(0.8)
                      : myTheme.primaryDark.withOpacity(0.8)),
            ),
          ),
        ),
      ],
    );
  }
}
