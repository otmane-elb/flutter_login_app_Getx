import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTextTheme {
  static TextTheme lightTextThem = TextTheme(
      headlineLarge:
          GoogleFonts.montserrat(color: Colors.black87, fontSize: 50),
      titleMedium: GoogleFonts.montserrat(color: Colors.black87, fontSize: 25));
  static TextTheme darkTextThem = TextTheme(
      headlineLarge:
          GoogleFonts.montserrat(color: Colors.white70, fontSize: 50),
      titleMedium: GoogleFonts.montserrat(color: Colors.white60, fontSize: 25));
}
