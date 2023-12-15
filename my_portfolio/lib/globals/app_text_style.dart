import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/globals/app_colors.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle monteseratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

  static TextStyle headingStyles({double fontSize = 36, Color color = Colors.white }){
    return GoogleFonts.josefinSans(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 1,
    );
  }

  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: Colors.white,
      letterSpacing: 1.5,
    );
  }

  static TextStyle ComfortaaStyle(){
    return GoogleFonts.comfortaa(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: AppColors.bgColor,
    );
  }
}
