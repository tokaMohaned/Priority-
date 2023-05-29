import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/styles/MyThemeData.dart';
import 'package:todo/screens/splash/splash.dart';

import 'firebase_options.dart';
import 'home_layout/home_layout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Splash_light.routeName,
      routes: {
     HomeLyaout.routeName:(context)=>HomeLyaout(),
        Splash_light.routeName:(context)=>Splash_light(),

      },
      theme: MyThemeData.lightTheme,
       darkTheme:MyThemeData.darkTheme ,
      //themeMode: ,
      debugShowCheckedModeBanner: false,

    );
  }
}

