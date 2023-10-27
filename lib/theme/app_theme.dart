import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Color(0xff704F38);
const _scaffoldBgColor = Color(0xffEDEDED);
const _displayMediumColor = Color(0xff1F2029);
const _displaySmallColor = Color(0xff797971);

ThemeData mainTheme = ThemeData(
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _scaffoldBgColor,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 20),
    bodyMedium: GoogleFonts.inter(
      color: _displayMediumColor,
    ),
    bodySmall: GoogleFonts.inter(color: _displaySmallColor, fontSize: 12.5),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const MaterialStatePropertyAll<Color>(_primaryColor),
      backgroundColor: MaterialStatePropertyAll<Color>(
        _primaryColor.withOpacity(0.5),
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: _primaryColor),
);
