import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_layout.dart';

class Splash_light extends StatefulWidget {
  static const String routeName="Splshe_light";

  const Splash_light({Key? key}) : super(key: key);

  @override
  State<Splash_light> createState() => _Splash_lightState();
}

class _Splash_lightState extends State<Splash_light> {
  void initState() {
    super.initState();
    Timer(
     Duration(seconds: 5),
        ()=>Navigator.pushReplacementNamed(context, HomeLyaout.routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor:Color(0xffDFECDB) ,
      body: Center(
        child: Container(
          child:
          Image(image: AssetImage("assets/images/light_splash_logo.png"),
        ),

        ),
      ), );
  }
}
