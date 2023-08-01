import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:xxxxxxxxxxxx/a.dart';
import 'package:xxxxxxxxxxxx/main.dart';

class as7a extends StatefulWidget {
  State<StatefulWidget> createState() {
    return as7aState();
  }
}

class as7aState extends State<as7a> {
  List s = [
  "الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.","الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِ.","لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي."

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
                child: Text("أذكار الاستيقاظ",
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
                                      ,child: Text("التكرار : 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),)]
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