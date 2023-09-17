import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/hedeth/hedeth.dart';
import 'package:task5/hedeth/hedeth_details.dart';
import 'package:task5/home/home_screen.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';
import 'package:task5/quran/sura-details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.AppLanguage),
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (context) => homeScreen(),
        suraDetails.routeName: (context) => suraDetails(),
        hedethDetils.routeName: (context) => hedethDetils(),
      },
      theme: myTheme.lightTheme,
      darkTheme: myTheme.darkTheme,
      themeMode: provider.AppTheme,
    );
  }

}
