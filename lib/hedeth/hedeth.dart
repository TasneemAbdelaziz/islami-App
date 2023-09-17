import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task5/hedeth/hedeth_details.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/providers/app_config_provider.dart';
import 'package:task5/quran/sura-details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hedethTap extends StatefulWidget {
  @override
  State<hedethTap> createState() => _hedethTapState();
}

class _hedethTapState extends State<hedethTap> {
  List<hedeth> hadethList = [];

  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (hadethList.isEmpty) {
      loadFiles();
    }

    return Column(
      children: [
        Center(child: Image.asset("assets/images/ahadeth_image.png")),
        Divider(
          height: 30,
          thickness: 3,
          color: provider.AppTheme == ThemeMode.light
              ? Theme.of(context).primaryColor
              : myTheme.yellowColor,
        ),
        Text(AppLocalizations.of(context)!.hadeth_name,
            style: Theme.of(context).textTheme.titleMedium),
        Divider(
          height: 30,
          thickness: 3,
          color: provider.AppTheme == ThemeMode.light
              ? Theme.of(context).primaryColor
              : myTheme.yellowColor,
        ),
        hadethList.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(hedethDetils.routeName,
                            arguments: hedeth(
                                title: hadethList[index].title,
                                body: hadethList[index].body));
                      },
                      child: Center(
                          child: Text(hadethList[index].title,
                              style: Theme.of(context).textTheme.titleSmall))),
                  itemCount: hadethList.length,
                ),
              ),
      ],
    );
  }

  void loadFiles() async {
    String content =
        await rootBundle.loadString("assets/hedethFiles/ahadeth.txt");
    List<String> lines = content.split('#\r\n');
    String title = '';
    String body = '';
    for (int i = 0; i < lines.length; i++) {
      List<String> hadethLines = lines[i].split('\n');
      title = hadethLines[0];
      hadethLines.removeAt(0);
      hadethList.add(hedeth(title: title, body: hadethLines));
      setState(() {});
    }
  }
}

class hedeth {
  String title;
  List<String> body;

  hedeth({required this.title, required this.body});
}
