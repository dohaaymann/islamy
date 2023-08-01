import 'dart:async';
import 'dart:math';

import 'package:animated_explode_button/animated_explode_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'package:xxxxxxxxxxxx/main.dart';


class test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return testState();
  }
}

class testState extends State<test> {
  // GlobalKey<ScaffoldState>skey=new GlobalKey<ScaffoldState>();

  List n = [
    "سُبْحَانَ اللَّه",
    "الْلَّهُ أَكْبرَ",
    "لَا إِلَهَ إِلَّا اللَّهُ ",
    " سُبْحَانَ اللَّهِ",
    "وَالْحَمْدُ لِلَّهِ",
    "وَلا إِلَهَ إِلا اللَّهُ ",
    " اللَّهُمَّ اغْفِرْ لِي ",
    "  اللَّهُمَّ ارْحَمْنِي",
    "اللَّهُمَّ ارْزُقْنِي"
  ];
  int x = 0;
  int c = 0;
  void increment() {
    setState(() {
      x++;
    });
  }
  void refresh() {
    setState(() {
      x=0;
    });
  }

  @override

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
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(padding: EdgeInsets.only(bottom: 1,top: 1,right: 6),margin: EdgeInsets.only(left: 60,bottom: 30,right: 1),
                  width: 300,alignment: Alignment.topRight,decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0xFFFFAB00)),
                  child:
                  Container(alignment: Alignment.centerRight,
                      padding:EdgeInsets.only(right:10),child: Text("مجموع تسبيحاتك : $x",style:TextStyle(fontSize: 28,color: Color(0xFF383124)),))),
              Center(
                  child: WidgetCircularAnimator(
                outerColor: Colors.amber,
                innerColor: Colors.grey,
                size: 300,
                innerAnimationSeconds: 5,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.transparent),
                  child: Container(
                    alignment: Alignment.center,
                    width: 500,
                    height: 500,
                    child: Text(
                      "$x",
                      style: TextStyle(color: Colors.white, fontSize: 92),textAlign:TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(160)),
                    //
                  ),
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: 320),
                  decoration:BoxDecoration(color:Color(0x88cccccc),borderRadius: BorderRadius.all(Radius.circular(11)))
                  ,child: IconButton(onPressed: (){
                     return refresh();
              }, icon:Icon(Icons.refresh,color: Colors.white,size: 30))),
              Container(
                  width: 400,color: Colors.transparent,
                  height:229,
                  child: AnimatedExplodeButton(
                    child:
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(1000,1000),backgroundColor:Color(0)
                      ),
                      onPressed: () {return increment();},
                        child: Image.asset("icons/beads.png",)
                      // child:
                      // Text(
                      //   "سبح من هنا",
                      //   style: TextStyle(color: Colors.white,fontSize: 40),
                      // ),
                    ),
                    onTap: () {


                    },
                    color: Colors.amberAccent,
                  )),

            ]),
      ),
    )
  ]);
}}
