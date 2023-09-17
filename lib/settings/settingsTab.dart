import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/settings/language_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task5/settings/theme_settings.dart';
import 'package:task5/providers/app_config_provider.dart';

class settingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: provider.AppTheme == ThemeMode.light
                  ? myTheme.primaryLight
                  : myTheme.yellowColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  // backgroundColor: myTheme.primaryLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  context: context, builder: (context) => languageSettings(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.AppLanguage == "ar"
                        ? AppLocalizations.of(context)!.arabic
                        : AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: provider.AppTheme == ThemeMode.light
                            ? myTheme.whiteColor
                            : myTheme.primaryDark),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 30,
                    color: provider.AppTheme == ThemeMode.light
                        ? myTheme.whiteColor
                        : myTheme.primaryDark,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Text(
            AppLocalizations.of(context)!.theming,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: provider.AppTheme == ThemeMode.light
                  ? myTheme.primaryLight
                  : myTheme.yellowColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  context: context,
                  builder: (context) => themeSettings(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.AppTheme == ThemeMode.light
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: provider.AppTheme == ThemeMode.light
                            ? myTheme.whiteColor
                            : myTheme.primaryDark),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 30,
                    color: provider.AppTheme == ThemeMode.light
                        ? myTheme.whiteColor
                        : myTheme.primaryDark,
                  ),
                ],
              ),
            ),
          ),
          Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
