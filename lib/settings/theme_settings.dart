import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class themeSettings extends StatefulWidget {
  @override
  State<themeSettings> createState() => _themeSettingsState();
}

class _themeSettingsState extends State<themeSettings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      height: 200,
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.AppTheme == ThemeMode.light
                ? getSelected(AppLocalizations.of(context)!.light)
                : getUnselected(AppLocalizations.of(context)!.light),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.AppTheme == ThemeMode.dark
                ? getSelected(AppLocalizations.of(context)!.dark)
                : getUnselected(AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget getSelected(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: myTheme.primaryLight),
        ),
        Icon(
          Icons.check,
          color: myTheme.primaryLight,
        ),
      ],
    );
  }

  Widget getUnselected(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
