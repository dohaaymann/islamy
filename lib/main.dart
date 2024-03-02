import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';
import 'package:xxxxxxxxxxxx/interface.dart';
import 'package:xxxxxxxxxxxx/azkarlist.dart';
import 'package:xxxxxxxxxxxx/quran.dart';
import 'package:xxxxxxxxxxxx/slah.dart';
import 'package:xxxxxxxxxxxx/t3am.dart';
import 'package:xxxxxxxxxxxx/sebha.dart';
import 'package:xxxxxxxxxxxx/doaa.dart';
import 'package:xxxxxxxxxxxx/wdo2.dart';
import 'package:xxxxxxxxxxxx/zkr.dart';
import 'StaticVars.dart';
import 'as7a.dart';
import 'azan.dart';
import 'firebase_options.dart';
import 'note.dart';
import 'sabah.dart';
import 'bslah.dart';
import 'hyg.dart';
import 'mnzl.dart';
import 'msaa.dart';
import 'mskd.dart';
import 'noom.dart';



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MYapp());
}
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
Future<void> showNotification() async {
  final int rndmIndex = Random().nextInt(StaticVars().smallDo3a2.length - 1);
  final AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    'channel_id',
    'إسلامي',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,
  );
  final NotificationDetails platformChannelSpecifics =NotificationDetails(android: androidPlatformChannelSpecifics);

  await flutterLocalNotificationsPlugin.show(
    rndmIndex,'دعاء اليوم',
    StaticVars().smallDo3a2[rndmIndex],
    platformChannelSpecifics,
  );
}

void callbackDispatcher() {
  WidgetsFlutterBinding.ensureInitialized();
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  Workmanager().executeTask((task, inputData) async {
    await showNotification();
    return true;
  });
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return
      MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
        displayLarge: const TextStyle(
            // fontFamily: "Amiri"
         ),),
          // fontFamily: "Amiri",
          brightness: Brightness.dark)  ,
      home:interFace(),
      routes:{
        "note":(context) =>note(sum:0),
        "sebha":(context) =>sebha(title: "سبحان الله"),
        "interFace":(context) => interFace(),
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
