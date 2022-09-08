import 'package:adorn/base/model/adorn_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adorn/base/resource/theme.dart';

class AdornDarkTheme extends AdornTheme{
  @override
  Color appbarColor = tintColor(Colors.black, 0.1);

  @override
  Color backgroundColor = tintColor(Colors.black, 0.2);

  @override
  Brightness brightness = Brightness.dark;

  @override
  Color primaryColor = Colors.black;

  @override
  Color secondaryColor = Colors.white.darken(75);

  @override
  Color primaryTextColor = Colors.white;

  @override
  String themeName = 'adorn_dark_theme';

  @override
  TextStyle defaultTextStyle = GoogleFonts.notoSans();

  AdornDarkTheme() {
    secondaryTextColor = primaryTextColor.darken(33);
    hintColor = primaryTextColor.darken(66);
  }
  
}