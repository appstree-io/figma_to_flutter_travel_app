import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();
  static TextStyle poppins({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );

  static TextStyle urbanist({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
  }) =>
      GoogleFonts.urbanist(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: height);

  static TextStyle inter({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
}
