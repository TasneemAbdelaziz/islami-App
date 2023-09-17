import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/hedeth/hedeth.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';
import 'package:task5/quran/quran.dart';
import 'package:task5/radio/radio.dart';
import 'package:task5/sebha/sebha.dart';
import 'package:task5/settings/settingsTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
          body: tabs[selectedIndex],
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              iconSize: 35,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                  BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: AppLocalizations.of(context)!.quran,
                ),

                  BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/hedeth.png"),
                  ),
                  label: AppLocalizations.of(context)!.hadeth,
                ),

                  BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                ),
              ],
              ),
          ),
        ),
      ],
    );
    //
    // );
  }
}

List<Widget> tabs = [
  quranTab(),
  hedethTap(),
  sebhaTab(),
  radioTab(),
  settingsTab()
];