import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/utils/App_color.dart';

class AppStyle {
  static final TextStyle bold16white = GoogleFonts.elMessiri(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: App_Color.whitecolor,
  );
  static final TextStyle bold24black = GoogleFonts.elMessiri(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: App_Color.blackcolor,
  );
  static final TextStyle bold16black = GoogleFonts.elMessiri(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: App_Color.blackcolor,
  );
  static final TextStyle bold20white = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: App_Color.whitecolor,
  );
  static final TextStyle bold14white = GoogleFonts.elMessiri(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: App_Color.whitecolor,
  );

  static final TextStyle bold20primary = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: App_Color.primarycolor,
  );
}
