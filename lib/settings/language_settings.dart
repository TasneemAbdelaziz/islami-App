import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class languageSettings extends StatefulWidget {
  @override
  State<languageSettings> createState() => _languageSettingsState();
}

class _languageSettingsState extends State<languageSettings> {
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
              provider.changeLanguage('en');
            },
            child: provider.AppLanguage == 'en'
                ? getSelected(AppLocalizations.of(context)!.english)
                : getUnselected(AppLocalizations.of(context)!.english),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: provider.AppLanguage == 'ar'
                ? getSelected(AppLocalizations.of(context)!.arabic)
                : getUnselected(AppLocalizations.of(context)!.arabic),
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
