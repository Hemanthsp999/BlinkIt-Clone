import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Txt {
  static txtHandler({
    required String text,
    required Color color,
    required FontWeight weight,
    String? fontFamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily ?? "regular",
          fontWeight: weight,
        ),
      ),
    );
  }
}
