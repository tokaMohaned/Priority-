
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/styles/text_style.dart';

import 'app-color.dart';

class MyThemeData{
  /////////
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: lightGreenColor,
    primaryColor: lightColor,
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: lightColor,
    //   onPrimary:Colors.black ,
    //   secondary:Colors.grey ,
    //   onSecondary:Colors.black,
    //   error: Colors.red,
    //   onError:Colors.white ,
    //   background: Colors.transparent,
    //   onBackground:lightColor ,
    //   surface:Colors.white ,
    //   onSurface: Colors.black,
    // ),
    appBarTheme:const AppBarTheme(
      backgroundColor: lightColor,
      //elevation: 0.0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
    ),

      textTheme:  TextTheme(
        bodySmall:Popins18Light(),
        bodyMedium: roboto12Black(),
        bodyLarge: popins22White(),//it is usually for app title
      ),

bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  type: BottomNavigationBarType.fixed,
  selectedItemColor: lightColor,
  //selectedLabelStyle: TextStyle(color: Colors.black),
  unselectedItemColor: Colors.grey.shade500,
  //unselectedLabelStyle: TextStyle(color: Colors.white),
)


  );


  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: darkBlueColor,
      primaryColor: darkColor,
      // colorScheme: const ColorScheme(
      //   brightness: Brightness.dark,
      //   primary: darkColor,
      //   onPrimary:Colors.white ,
      //   secondary:yelloColor ,
      //   onSecondary:Colors.white,
      //   error: Colors.red,
      //   onError:Colors.white ,
      //   background: Colors.transparent,
      //   onBackground:darkColor ,
      //   surface: darkColor,
      //   onSurface: yelloColor,
      // ),

      appBarTheme:const AppBarTheme(
          backgroundColor: darkColor,
          //elevation: 0.0,
          centerTitle: false,
          iconTheme: IconThemeData(
              color: darkColor,
            size: 30,
          )
      ),

      textTheme:  TextTheme(
        bodySmall:
        //GoogleFonts.elMessiri(),
        GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: darkColor,

        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),

        bodyLarge: //it is usually for app title
        GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: darkBlueColor,
        ),


      ),


      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkBlueColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: darkColor,
        //selectedLabelStyle: TextStyle(color: yelloColor),
        unselectedItemColor: Colors.white,
        //unselectedLabelStyle: TextStyle(color: darkColor),
      )


  );//it is object of kind themeData

}