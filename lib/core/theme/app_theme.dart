import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kScaffoldColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        alignment: Alignment.center,
        textStyle: GoogleFonts.inter(),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(180),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: kScaffoldColor,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      labelSmall: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 10.sp,
      ),
      labelMedium: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 12.sp,
      ),
      labelLarge: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 14.sp,
      ),
      titleSmall: GoogleFonts.catamaran(
        color: Colors.white,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.catamaran(
        color: Colors.white,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.catamaran(
        color: Colors.white,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
