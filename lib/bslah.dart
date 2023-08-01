import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:xxxxxxxxxxxx/a.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class bslah extends StatefulWidget {
  State<StatefulWidget> createState() {
    return bslahState();
  }
}

class bslahState extends State<bslah> {
  List s = ["أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله. اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام .","لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.","  لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.","  سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.",
  "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير.","  بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم  قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ.","  بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم  قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَد.َ"," بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم  قُلْ أَعُوذُ بِرَبِّ النَّاسِ، مَلِكِ النَّاسِ، إِلَهِ النَّاسِ، مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ، الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ، مِنَ الْجِنَّةِ وَ النَّاسِ.","  أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ  اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.","  لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.","  اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً  بَعْد السّلامِ من صَلاةِ الفَجْر. "," اللَّهُمَّ أَجِرْنِي مِنْ النَّار.","اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِك.َ"];
  List s1=["1","1","1","33","1","3","3","3","1","10","1","7","1"];
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
                child: Text("أذكار بعد الصلاة",
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
                                      ,child: Text(" النكرار : ${s1[i]} ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),)]
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