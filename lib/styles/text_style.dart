import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app-color.dart';

TextStyle  roboto12Black()=> GoogleFonts.roboto(
fontSize: 12,
fontWeight: FontWeight.bold,
color: Colors.black,
);

TextStyle Popins18Light()=>GoogleFonts.poppins(
fontSize: 18,
fontWeight: FontWeight.bold,
color: lightColor,
);

TextStyle popins22White()=> GoogleFonts.poppins(
fontSize: 22,
fontWeight: FontWeight.bold,
color: Colors.white,
);