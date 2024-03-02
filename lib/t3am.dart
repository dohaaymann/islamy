import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:xxxxxxxxxxxx/interface.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class t3am extends StatefulWidget {
  State<StatefulWidget> createState() {
    return t3amState();
  }
}

class t3amState extends State<t3am> {
  List s = [
  " بِسْمِ اللهِ. فإنْ نسي في أَوَّلِهِ، فَليَقُلْ: بِسْمِ اللَّه أَوَّلَهُ وَآخِرَهُ.","   اَللَّهُمَّ بَارِكْ لَنَا فِيهِ, وَزِدْنَا مِنْهُ.","   الْحَمْدُ للهِ الَّذِي أَطْعَمَنِي هَذَا, وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِّنِّي وَلاَ قُوَّةٍ. الْحَمْدُ لِلَّهِ كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ غَيْرَ مَكْفِيٍّ وَلَا مُوَدَّعٍ وَلَا مُسْتَغْنًى عَنْهُ رَبَّنَا  غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ.","  أَفْطَرَ عِنْدَكُمُ الصَّائِمُونَ ، وَأَكَلَ طَعَامكُمُ الأَبْرَارُ ، وَصَلَّتْ عَلَيْكُمُ الْمَلائِكَةُ.","  كَانَ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَشْرَبُ فِي ثَلاَثَةِ أَنْفَاسٍ، إِذَا أَدْنَى الإِنَاءَ إِلَى فَمِهِ سَمَّى اللهَ تَعَالَى, وَإِذَا أَخَّرَهُ حَمِدَ اللهَ تَعَالَى، يَفْعَلُ ذَلِكَ ثَلاَثَ مَرَّاتٍ."
  ];
  List s1=[
    "الذكر عند الطعام والشراب ","الذكر عند شرب اللبن ","الذكر عند الفراغ من الطعام والشراب"," أذكار الضيف ","  هدى النبى فى الشرب"
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
                child: Text("أذكار الطعام",
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
                                    Column(
                                      children: [Text("${s1[i]}",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.amberAccent.shade700,fontWeight: FontWeight.bold),),
                                        Text("${s[i]}",
                                            style: TextStyle(
                                                fontSize:25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),)]
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