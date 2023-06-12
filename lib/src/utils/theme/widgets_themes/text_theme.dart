import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTextTheme {
  static TextTheme lightTextThem = TextTheme(
      headlineLarge: GoogleFonts.montserrat(color: Colors.white, fontSize: 50),
      titleMedium: GoogleFonts.montserrat(color: Colors.blue, fontSize: 25),
      titleLarge: GoogleFonts.aboreto(color: Colors.blue, fontSize: 30),
      bodyLarge: GoogleFonts.aboreto(color: Colors.amber, fontSize: 20));

  static TextTheme darkTextThem = TextTheme(
      headlineLarge:
          GoogleFonts.montserrat(color: Colors.white70, fontSize: 50),
      titleMedium:
          GoogleFonts.montserrat(color: Colors.blueAccent, fontSize: 25),
      titleLarge: GoogleFonts.aboreto(color: Colors.blueAccent, fontSize: 30),
      bodyLarge: GoogleFonts.aboreto(color: Colors.amber, fontSize: 20));
}
