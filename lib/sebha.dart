import 'dart:async';
import 'dart:convert';
import 'dart:math';

// import 'package:animated_explode_button/animated_explode_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'package:xxxxxxxxxxxx/main.dart';
import 'package:xxxxxxxxxxxx/note.dart';
import 'package:xxxxxxxxxxxx/sql.dart';


class sebha extends StatefulWidget {
  String title;
  sebha({required this.title});
  State<StatefulWidget> createState() {
    return testState(title: title);
  }
}

class testState extends State<sebha> {
  // GlobalKey<ScaffoldState>skey=new GlobalKey<ScaffoldState>();

  String title;
  testState({required this.title});
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
  var index=0;
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
 SQLDB sql=SQLDB();
  List l_doaa=[];
  readdata()async{
    var res=await sql.read('Doaa');
    l_doaa.addAll(res);
    if(this.mounted){
      setState(() { });
    }
  }
  select()async{
    var res=await sql.select(title);
    var y=res.toList().first;
    for (final e in y.entries) {
      setState(() {
        x=e.value;
      });
    }
  }
  var sum=0;
  selectAll()async{
  var res=await sql.selectsum();
  var y=res.toList().first;
  for (final e in y.entries) {
    setState(() {
      sum=(e.value);
    });
  }
  print(sum);
  print(res);
  return sum;
  }
  @override
  void initState() {
    readdata();
    select();
    selectAll();
    print("sebhaaaaaaaaaaaaa");
    super.initState();
  }
  @override
Widget build(BuildContext context) {
    // initState();
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
leading: Container(width:150 ,padding: EdgeInsets.all(10),
  child:   IconButton(onPressed: (){Navigator.of(context).pushNamed('interFace');}, icon:Icon(Icons.arrow_back,size: 30,)),
),
        backgroundColor: Colors.transparent,actions: [
      Align(alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(color: Colors.transparent,
            child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Expanded(child: SizedBox()),
                Align(alignment:Alignment.center,
                  child: Container(width:280,alignment: Alignment.center,
                    child: PopupMenuButton(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),initialValue: title,
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          Text("$title",style: TextStyle(fontSize: 25,fontFamily: "Amiri"),),
                          Icon(Icons.arrow_drop_down_sharp,color: Colors.amber,size:35,),Expanded(child: SizedBox()),
                        ],
                      ),
                      itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            value: 'الله أكبر',
                            child: InkWell(
                                onTap: () async {
                                  setState(() {
                                   title="الله أكبر";
                                   index=4;
                                   select();
                                  });
                                  Navigator.pop(context);
                                },
                                child: Align(alignment: Alignment.center,child:Text("الله أكبر",style: TextStyle(fontSize: 30,fontFamily: "Amiri"),)))
                        ),
                        PopupMenuItem(
                            value: 'سبحان الله',
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    title="سبحان الله";
                                    index=0;
                                    select();
                                  });refresh();
                                  Navigator.pop(context);
                                },
                        child: Align(alignment: Alignment.center,child:Text("سبحان الله",style: TextStyle(fontSize: 30,fontFamily: "Amiri"),)))
                        ),
                        PopupMenuItem(
                            value:  'لا إله إلا الله',
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    title= 'لا إله إلا الله';
                                    index=2;
                                    select();
                                  });refresh();
                                  Navigator.pop(context);
                                },
                                child: Align(alignment: Alignment.center,child:Text( 'لا إله إلا الله',style: TextStyle(fontSize: 30,fontFamily: "Amiri"),)))
                        ),
                        PopupMenuItem(
                            value: 'أستغفر الله',
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    title='أستغفر الله';
                                    index=5;
                                    select();
                                  });refresh();
                                  Navigator.pop(context);
                                },
                                child: Align(alignment: Alignment.center,child:Text('أستغفر الله',style: TextStyle(fontSize: 30,fontFamily: "Amiri"),)))
                        ),
                        PopupMenuItem(
                            value: "لا حول ولا قوة إلا بالله",
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    title="لا حول ولا قوة إلا بالله";
                                    index=3;
                                    select();
                                  });refresh();
                                  Navigator.pop(context);
                                },
                                child: Align(alignment: Alignment.center,child:Text("لا حول ولا قوة إلا بالله",style: TextStyle(fontSize:28,fontFamily: "Amiri"),)))
                        ),
                        PopupMenuItem(
                            value: "الحمدلله",
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    title="الحمدلله";
                                    index=1;
                                    select();
                                  });refresh();
                                  Navigator.pop(context);
                                },
                                child: Align(alignment: Alignment.center,child:Text("الحمدلله",style: TextStyle(fontSize: 30,fontFamily: "Amiri"),)))
                        )
                      ];

                    },),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => note(sum:sum),));
          }, icon:FaIcon(FontAwesomeIcons.bars,size: 22,) )
      ],
      ),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,bottom: 15,top: 10),
                        child: Container(
                            alignment: Alignment.centerRight,decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                             color: Color(0xFFFFAB00)),
                            padding:EdgeInsets.only(right:10,left: 10),child: Text("مجموع تسبيحاتك : $sum",style:TextStyle(fontFamily:null,fontSize: 28,color: Color(0xFF383124)),)),
                      ),
                    ],
                  ),
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
                      ,child: IconButton(onPressed: ()async{
                        var res=await sql.update({'num':0},"doaa='$title'");
                    setState(() {
                      select();
                      selectAll();
                    });
                    print(res);
                         // return refresh();
                  }, icon:Icon(Icons.refresh,color: Colors.white,size: 30))),
                    Expanded(
                      child: InkWell(
                        onTap: ()async {
                          print("${title}+$index");
                          setState(() {
                            increment();
                          });

                          var res=await sql.update({'num':x},"doaa='$title'");
                          selectAll();
                          print(res);
                          // return
                        },
                        child: Container(
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            child: Text(
                              "سبح من هنا",
                              style: TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Amiri" ),
                            )),
                      ),
                    ),
                  ]
        ),
  ))]);
}}
