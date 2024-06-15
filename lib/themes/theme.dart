import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Color(0xFFFDBF00);
const accentColor = Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      onPrimary: primaryColor,
      secondary: accentColor,
      onSecondary: accentColor,
    ),
  );
}
