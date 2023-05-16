import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_layout/home_layout.dart';

class DarkSplash extends StatefulWidget {
  static const String routeName="DarkSplash";

  const DarkSplash({Key? key}) : super(key: key);

  @override
  State<DarkSplash> createState() => _DarkSplashtState();
}

class _DarkSplashtState extends State<DarkSplash> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          ()=>Navigator.pushNamed(context, HomeLyaout.routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xff060E1E) ,
      body: Center(
        child: Container(
          child:
          Image(image: AssetImage("assets/images/dark_splash.png"),
          ),

        ),
      ), );
  }
}
