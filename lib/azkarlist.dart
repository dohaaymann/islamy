import 'package:animation_list/animation_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:xxxxxxxxxxxx/interface.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class allah extends StatefulWidget {
  State<StatefulWidget> createState() {
    return allahState();
  }
}

class allahState extends State<allah> {
  List allah = [
    {
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم  اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. "
    },
    {
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم  قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ"
    },
    {
      "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ"
    },
    {
      "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ"
    },
    {
      "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر. "
    },
    {
      "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ ."
    },
    {
      "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً."
    },
    {
      "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك."
    },
    {
      "اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر"
    },
    {
      "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. "
    },
    {
      "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم."
    },
    {
      "اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور."
    },
    {
      "أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ"
    },
    {
      "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه"
    },
    {
      "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ."
    },
    {
      "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ."
    },
    {
      "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي."
    },
    {
      "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ. "
    },
  ];

  Widget _buildTile(String? title, Color? backgroundColor) {
    return Container(
        child: TextButton(onPressed: () {}, child: Text("أذكار")),
        height: 80,
        width: 700,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: backgroundColor,
        ));
  }

  Widget build(BuildContext context) {
    return Stack(children: [
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
            backgroundColor: Colors.transparent, toolbarHeight:70,flexibleSpace: Container(
    decoration: BoxDecoration(
    gradient:LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,
    colors: [Colors.black,Colors.amberAccent.shade700]),),),
            title:
            Container(alignment: Alignment.topRight,
              child: Text("أذكار المسلم",
                  style: TextStyle(fontSize: 30,fontFamily: "Amiri"),),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: AnimationList(duration: 2800, reBounceDepth: 50, children: [
            Column(
              children: <Widget>[
                Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("azkar1");
                        },
                        child: Text(
                          "أذكار الصباح",
                          style: TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"),textAlign: TextAlign.center,
                        )),
                    height: 80,alignment: Alignment.center,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.teal)),
                Container(
                    child: TextButton(
                        onPressed: () { Navigator.of(context).pushNamed("msaa");},
                        child: Text("أذكار المساء",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical:5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.red)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("bslah");},
                        child: Text("أذكار بعد الصلاة",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.pink)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("noom");},
                        child: Text("أذكار النوم",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.deepPurple)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("as7a");},
                        child: Text("أذكار الاستيقاظ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.green)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("slah");},
                        child: Text("أذكار الصلاة",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.greenAccent)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("azan");},
                        child: Text("أذكار الآذان",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.brown)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("mskd");},
                        child: Text("أذكار المسجد",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.purple)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("wdo2");},
                        child: Text("أذكار الوضوء",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.lightGreen)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("mnzl");},
                        child: Text("أذكار المنزل",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.pink)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("t3am");},
                        child: Text("أذكار الطعام",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.deepOrange)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("quran");},
                        child: Text("أذكار ختم القرآن الكريم",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.greenAccent)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("hyg");
                        },
                        child: Text("أذكار الحج و العمرة",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.brown)),
                Container(
                    child: TextButton(
                        onPressed: () {Navigator.of(context).pushNamed("zkr");},
                        child: Text("فضل الذكر",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri"))),
                    height: 80,
                    width: 700,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.blue)),


              ],
            ),
          ])),
    ]);
  }
}
