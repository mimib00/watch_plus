import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kScaffoldColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: kPrimaryColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.inter(fontSize: 10.sp),
      unselectedLabelStyle: GoogleFonts.inter(fontSize: 10.sp),
    ),
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
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: kScaffoldColor,
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(color: kPrimaryColor, fontSize: 14.sp),
    ),
    textTheme: TextTheme(
      labelSmall: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 10.sp,
        letterSpacing: 0,
      ),
      labelMedium: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 12.sp,
        letterSpacing: 0,
      ),
      labelLarge: GoogleFonts.ubuntu(
        color: Colors.white,
        fontSize: 14.sp,
        letterSpacing: 0,
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
