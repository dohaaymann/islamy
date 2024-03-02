import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:xxxxxxxxxxxx/interface.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class noom extends StatefulWidget {
  State<StatefulWidget> createState() {
    return noomState();
  }
}

class noomState extends State<noom> {
  List s = [
    "بِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي ، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْها ، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين.",
    "اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها ، إِنْ أَحْيَيْـتَها فاحْفَظْـها ، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها . اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة. ",
    "اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَك.",
    "بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا. ",
    "الـحَمْدُ للهِ الَّذي أَطْـعَمَنا وَسَقـانا، وَكَفـانا، وَآوانا، فَكَـمْ مِمَّـنْ لا كـافِيَ لَـهُ وَلا مُـؤْوي.",
    "اللّهُـمَّ عالِـمَ الغَـيبِ وَالشّـهادةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كُـلِّ شَـيءٍ وَمَليـكَه، أَشْهـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي، وَمِن شَـرِّ الشَّيْـطانِ وَشِـرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم . ",
    "اللّهُـمَّ أَسْـلَمْتُ نَفْـسي إِلَـيْكَ، وَفَوَّضْـتُ أَمْـري إِلَـيْكَ، وَوَجَّـهْتُ وَجْـهي إِلَـيْكَ، وَأَلْـجَـاْتُ ظَهـري إِلَـيْكَ، رَغْبَـةً وَرَهْـبَةً إِلَـيْكَ، لا مَلْجَـأَ وَلا مَنْـجـا مِنْـكَ إِلاّ إِلَـيْكَ، آمَنْـتُ بِكِتـابِكَ الّـذي أَنْزَلْـتَ وَبِنَبِـيِّـكَ الّـذي أَرْسَلْـت.",
    "سُبْحَانَ اللَّهِ. ",
    "الْحَمْدُ لِلَّهِ. ",
    "اللَّهُ أَكْبَرُ. ",
    "آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ.",
    "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
    "أذكار من قلق في فراشه ولم ينم  عن بريدة رضي الله عنه، قال‏:‏ شكا خالد بن الوليد رضي الله عنه إلى النبي صلى الله عليه وسلم فقال‏:‏ يا رسول الله‏!‏ ما أنام الليل من الأرق، فقال النبي صلى الله عليه وسلم‏:‏ ‏'‏إذا أويت إلى فراشك فقل‏:‏ اللهم رب السموات السبع وما أظلت، ورب الأرضين وما أقلت، ورب الشياطين وما أضلت، كن لي جارا من خلقك كلهم جميعا أن يفرط علي أحد منهم أو أن يبغي علي، عز جارك، وجل ثناؤك ولا إله غيرك، ولا إله إلا أنت‏'  عن عمرو بن شعيب، عن أبيه، عن جده: أن رسول الله صلى الله عليه وسلم كان يعلمهم من الفزع كلمات‏:‏ ‏'‏أعوذ بكلمات الله التامة من غضبه وشر عباده، ومن همزات الشياطين وأن يحضرون‏'. ",
    "أذكار الأحلام  عن أبي قتادة رضي الله عنه قال‏:‏ قال رسول الله صلى الله عليه وسلم‏:‏ ‏'‏ ‏' وفي رواية'‏الرؤيا الحسنة من الله، والحلم من الشيطان، فمن رأى شيئا يكرهه فلينفث عن شماله ثلاثا وليتعوذ من الشيطان، فإنها لا تضره'. ",

  ];
  List s1=[
    "1",
    "1",
    "3",
    "1",
    "1",
    "1",
    "1",
    "33",
    "33",
    "34",
    "3",
    "1",
    "1",
    "1",
    "1",

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
                child: Text("أذكار النوم",
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
                                    title:

                                    Text("${s[i]}",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center)
                                    ,subtitle: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent.shade700)
                                      ,child: Text(" التكرار : ${s1[i]} ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),)]
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