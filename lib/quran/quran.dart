import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/my_theme.dart';
import 'package:task5/quran/sura-details.dart';

class quranTab extends StatelessWidget{
  List<String>names=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Center(child: Image.asset("assets/images/quran_image.png")),
          Divider(
            height: 30,
            thickness: 3,
            color: Theme.of(context).primaryColor,
          ),
          Text("Sura Name",style:Theme.of(context).textTheme.titleMedium),
          Divider(
            height: 30,
            thickness: 3,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(child: ListView.builder(
              itemBuilder:(context,index){
                return InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).pushNamed(suraDetails.routeName,
                      arguments: suraDetailsArgs(name: names[index], index: index)
                      );
                    },
                    child:
                Center(child:
                Text(names[index],style: Theme.of(context).textTheme.titleSmall,)));
              },
              itemCount: names.length,
          ),

          ),
        ],
      );

  }

}