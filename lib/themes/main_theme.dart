import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    headline1: GoogleFonts.mulish(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    headline2: GoogleFonts.mulish(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 15,
    ),
    headline3: GoogleFonts.mulish(
      fontWeight: FontWeight.w800,
      color: const Color(0xFF303e65),
      fontSize: 18,
    ),
    subtitle1: GoogleFonts.mulish(
      color: Colors.white54,
      fontSize: 12,
    ),
    subtitle2: GoogleFonts.mulish(
      color: Colors.black54,
      fontSize: 12,
    ),
    bodyText1: GoogleFonts.mulish(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 13,
    ),
    bodyText2: GoogleFonts.mulish(
      fontWeight: FontWeight.w800,
      color: const Color(0xFF303e65),
      fontSize: 15,
    ),
  ),
);
