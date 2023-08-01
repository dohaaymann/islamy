import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:xxxxxxxxxxxx/a.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class azan extends StatefulWidget {
  State<StatefulWidget> createState() {
    return azanState();
  }
}

class azanState extends State<azan> {
  List s = [
    "يَقُولُ مِثْلَ مَا يَقُولُ الـمُؤَذِّنُ إلاَّ فِي 'حَيَّ عَلَى الصَّلاةِ وَحَيَّ عَلَى الفَلاَحِ' فَيَقُولُ: 'لاَ حَوْلَ وَلا قُوَّةَ إلاَّ باللَّهِ.'   ","عنْ سَعْدِ بْن أَبي وقَّاصٍ رضِيَ اللَّه عنْهُ عَن النبي صَلّى اللهُ عَلَيْهِ وسَلَّم أَنَّهُ قَالَ: 'مَنْ قَال حِينَ يسْمعُ المُؤذِّنَ : أَشْهَد أَنْ لا إِله إِلاَّ اللَّه وحْدهُ لا شَريك لهُ ، وَأَنَّ مُحمَّداً عبْدُهُ وَرسُولُهُ ، رضِيتُ بِاللَّهِ ربًّا ، وبمُحَمَّدٍ رَسُولاً ، وبالإِسْلامِ دِينًا ، غُفِر لَهُ ذَنْبُهُ'. رواه مسلم .",
    "عَنْ عبْدِ اللَّهِ بْنِ عَمرِو بْنِ العاصِ رضِيَ اللَّه عنْهُما أَنه سَمِع رسُولَ اللَّهِ صَلّى اللهُ عَلَيْهِ وسَلَّم يقُولُ : 'إِذا سمِعْتُمُ النِّداءَ فَقُولُوا مِثْلَ ما يَقُولُ ، ثُمَّ صَلُّوا علَيَّ ، فَإِنَّهُ مَنْ صَلَّى علَيَّ صَلاةً صَلَّى اللَّه عَلَيْهِ بِهَا عشْراً ، ثُمَّ سلُوا اللَّه لي الْوسِيلَةَ ، فَإِنَّهَا مَنزِلَةٌ في الجنَّةِ لا تَنْبَغِي إِلاَّ لعَبْدٍ منْ عِباد اللَّه وَأَرْجُو أَنْ أَكُونَ أَنَا هُو ، فَمنْ سَأَل ليَ الْوسِيلَة حَلَّتْ لَهُ الشَّفاعَةُ'. رواه مسلم . ",
    "عَنْ جابرٍ بن عبد الله رضَي اللَّه عنهما‏ أَنَّ رَسُولَ اللَّهِ صَلّى اللهُ عَلَيْهِ وسَلَّم قَالَ : 'من قَال حِين يسْمعُ النِّداءَ : اللَّهُمَّ رَبَّ هذِهِ الدَّعوةِ التَّامَّةِ ، والصَّلاةِ الْقَائِمةِ، آت مُحَمَّداً الْوسِيلَةَ ، والْفَضَيِلَة، وابْعثْهُ مقَامًا محْمُوداً الَّذي وعَدْتَه ، حلَّتْ لَهُ شَفَاعتي يوْم الْقِيامِة' .رواه البخاري . ",
    "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ عَلَى سَيِّدِنَا مُحَمَّدٍ.  اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ، والصَّلاةِ القَائِمَةِ، آتِ مُـحَمَّداً الوَسِيْلَةَ والفَضِيْلَةَ، وابْعَثْهُ مَقَاماً مَـحْمُوداً الَّذِي وَعَدْتَهُ، إنَّكَ لا تُخْلِفُ الـمِيْعَادِ. ",
    "ما بين الأذان والإقامة فالدعاء عندئذٍ مرغّب فيه ومستحب.  قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: 'الدُّعَاءُ لَا يُرَدُّ بَيْنَ الْأَذَانِ وَالْإِقَامَةِ'.  قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: 'إِنَّ الدُّعَاءَ لَا يُرَدُّ بَيْنَ الْأَذَانِ وَالْإِقَامَةِ فَادْعُوا'",
    "اللهُ أكْبَرُ ، اللهُ أكْبَرُ  اللهُ أكْبَرُ ، اللهُ أكْبَرُ  أشْهَدُ أنَّ لا إلَهَ إلاَّ الله  أشْهَدُ أنَّ لا إلَهَ إلاَّ اللهُ  أشْهَدُ أنَّ مُحَمَّداً رَسُولُ اللهِ  أشْهَدُ أنَّ مُحَمَّداً رَسُولُ اللهِ  حَيَّ عَلَى الصَّلاةِ  حَيَّ عَلَى الصَّلاةِ  حَيَّ عَلَى الفَلاحِ  حَيَّ عَلَى الفَلاحِ  اللهُ أكْبَرُ ، اللهُ أكْبَرُ  لاَ إلَهَ إلاَّ اللهُ  ",
    "اللهُ أكْبَرُ ، اللهُ أكْبَرُ  اللهُ أكْبَرُ ، اللهُ أكْبَرُ  أشْهَدُ أنَّ لا إلَهَ إلاَّ اللهُ  أشْهَدُ أنَّ لا إلَهَ إلاَّ اللهُ  أشْهَدُ أنَّ مُحَمَّداً رَسُولُ اللهِ  أشْهَدُ أنَّ مُحَمَّداً رَسُولُ اللهِ  حَيَّ عَلَى الصَّلاة  حَيَّ عَلَى الصَّلاةِ  حَيَّ عَلَى الفَلاحِ  حَيَّ عَلَى الفَلاحِ  الصلاةُ خيرٌ مِنَ النوم  الصلاةُ خيرٌ من النوم  اللهُ أكْبَرُ ، اللهُ أكْبَرُ  لاَ إلَهَ إلاَّ اللهُ",
    "اللهُ أكْبَرُ ، اللهُ أكْبَرُ  أشْهَدُ أنَّ لا إلَهَ إلاَّ اللهُ  أشْهَدُ أنَّ مُحَمَّداً رَسُولُ اللهِ  حَيَّ عَلَى الصَّلاةِ  حَيَّ عَلَى الفَلاحِ  قد قامت الصلاةُ  قد قامت الصلاةُ  اللهُ أكْبَرُ ، اللهُ أكْبَرُ  لاَ إلَهَ إلاَّ اللهُ",

  ];
  List s1=[
    "ما يقال عند سماع الأذان",
    "",
    "",
    "",
    "ما يقال بعد سماع الأذان",
    "ما يقال بين الأذان والإقامة",
    "نص صيغة الأذان",
    "نص صيغة أذان الفجر",
    "نص صيغة الإقامة",
  ];
  @override
  Widget build(BuildContext context ) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/25d0ad84b2a4ec40fce5591cbfd23cdc.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            )),
        Scaffold(
            appBar: AppBar(
              bottomOpacity: 5,elevation: 5,
              backgroundColor: Colors.transparent, toolbarHeight:70,flexibleSpace: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                gradient:LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,
                    colors: [Colors.black,Colors.amberAccent.shade700]),
              ),
            ),
              title:
              Container(alignment: Alignment.topRight,
                child: Text("أذكار الآذان",
                  style: TextStyle(fontSize: 30,fontFamily: "Amiri"),textAlign: TextAlign.right, ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body:
            Directionality(textDirection: TextDirection.rtl,
              child: Container(
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: s.length,
                    itemBuilder: (context, i) {
                      return
                        SingleChildScrollView(
                          child: Card(
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                color:Color(0xFF383124),
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              // height: 250,
                              alignment: Alignment.center,padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(top: 6, left: 8, right: 8),
                              child:  Column(
                                  children: [ ListTile(
                              title: Column(
                                      children: [Text("${s1[i]}",style: TextStyle(fontSize: 32,color: Colors.amberAccent.shade700,fontWeight: FontWeight.bold),),
                                        Text("${s[i]}",
                                            style: TextStyle(
                                                fontSize:25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                      ],
                                    )),]
                              ),
                            ),
                          ),
                        );
                    },
                  )),
            ))
      ],
    );
  }
}