import 'package:adorn/base/model/adorn_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adorn/base/resource/theme.dart';

class AdornLightTheme extends AdornTheme {
  @override
  Color appbarColor = Colors.white;

  @override
  Color backgroundColor = const Color(0xffeeeeff);

  @override
  Brightness brightness = Brightness.light;

  @override
  Color primaryColor = Colors.white;

  @override
  Color secondaryColor = Colors.white.darken(25);

  @override
  Color primaryTextColor = Colors.black;

  @override
  String themeName = 'adorn_light_theme';

  @override
  TextStyle defaultTextStyle = GoogleFonts.montserrat();

  AdornLightTheme() {
    secondaryTextColor = primaryTextColor.lighten(33);
    hintColor = primaryTextColor.lighten(66);
  }
}
