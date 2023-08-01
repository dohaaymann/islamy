import 'package:flutter/material.dart';
import 'package:xxxxxxxxxxxx/a.dart';
import 'package:xxxxxxxxxxxx/allah.dart';
import 'package:xxxxxxxxxxxx/quran.dart';
import 'package:xxxxxxxxxxxx/slah.dart';
import 'package:xxxxxxxxxxxx/t3am.dart';
import 'package:xxxxxxxxxxxx/test.dart';
import 'package:xxxxxxxxxxxx/allah2.dart';
import 'package:xxxxxxxxxxxx/wdo2.dart';
import 'package:xxxxxxxxxxxx/zkr.dart';
import 'as7a.dart';
import 'azan.dart';
import 'azkar1.dart';
import 'azkar.dart';
// @dart=2.9
import 'package:widget_circular_animator/widget_circular_animator.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:animated_explode_button/animated_explode_button.dart';
import 'bslah.dart';
import 'hyg.dart';
import 'mnzl.dart';
import 'msaa.dart';
import 'mskd.dart';
import 'noom.dart';
import 'src/my_app.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:stacked_listview/stacked_listview.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';
import 'package:scroll_page_view/scroll_page.dart';



Future main() async{
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return
      MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Amiri",textTheme:Typography.whiteMountainView,brightness: Brightness.dark)  ,
      home:a(),
      routes:{
        "test":(context) =>test(),
        "a":(context) => a(),
        "azkar":(context) =>azkar(),
        "allah":(context) => allah(),
        "allah2":(context) => allah2(),
        "azkar1":(context) =>azkar1(),
        "msaa":(context) => msaa(),
        "azan" :(context) => azan(),
        "noom":(context) => noom(),
        "as7a":(context) => as7a(),
        "mskd":(context) => mskd(),
        "wdo2":(context) => wdo2(),
        "mnzl":(context) => mnzl(),
        "t3am":(context) => t3am(),
        "bslah":(context) => bslah(),
        "slah":(context) => slah(),
        "hyg":(context) => hyg(),
        "quran":(context) => quran(),
        "zkr":(context) => zkr()

      }
    );
  }
}
