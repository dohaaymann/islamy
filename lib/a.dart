import 'main.dart';
import 'test.dart';
import 'package:flutter/material.dart';

class a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("image/ba8998be-c0be-4462-aac3-2ae88ffe0a5b.jpeg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          )),
          Scaffold(
            // appBar: AppBar(
            //   title:
            //   backgroundColor: Colors.transparent,
            // ),
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "إْسَلاميْ",
                    style: TextStyle(fontFamily:"Amiri",fontSize: 60, wordSpacing: 12, color:  Colors.white),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 40, left: 40, bottom: 0, right: 150),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("allah");
                                },
                                child:
                                Container(height:60,width:60,child: Image.asset("icons/islam.png",)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amberAccent.shade700,
                                  padding: EdgeInsetsDirectional.all(20),foregroundColor: Color(0xFF383124),
                                  shape: CircleBorder(),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 25),
                                child: Text(
                                  "أذكار",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35,fontFamily: "Amiri"),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("test");
                                },
                                child: Container(height:60,width:60,child: Image.asset("icons/beads.png",))

                                      ,style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amberAccent.shade700,foregroundColor: Color(0xFF383124),
                                  padding: EdgeInsetsDirectional.all(20),
                                  shape: CircleBorder(),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 25),
                                child: Text(
                                  "تسابيح",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35,fontFamily: "Amiri"),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("allah2");
                                },
                                child:Container(height:60,width:60,child: Image.asset("icons/dua.png",)),

                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amberAccent.shade700,foregroundColor: Color(0xFF383124),
                                  padding: EdgeInsetsDirectional.all(20),
                                  shape: CircleBorder(),
                                )),
                            Container(
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  "أدعية",
                                  style: TextStyle(fontFamily:"Amiri",
                                      color: Colors.white, fontSize: 35),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
