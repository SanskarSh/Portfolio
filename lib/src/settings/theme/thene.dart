import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      background: Color.fromRGBO(247, 248, 252, 1),
      primary: Color.fromRGBO(118, 127, 217, 1),
      secondary: Color.fromRGBO(85, 95, 124, 1),
      primaryContainer: Color.fromRGBO(223, 222, 225, 1),
      onPrimaryContainer: Color.fromRGBO(91, 93, 120, 1),
      tertiary: Color.fromRGBO(227, 210, 142, 1),
    ),
    textTheme: buildTextTheme(),
  );

  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
        background: Color.fromRGBO(85, 95, 124, .9),
        primary: Color.fromRGBO(118, 127, 217, 1),
        secondary: Color.fromRGBO(247, 248, 252, 1),
        primaryContainer: Color.fromRGBO(64, 66, 90, 1),
        onPrimaryContainer: Color.fromRGBO(223, 222, 225, .5),
        tertiary: Color.fromRGBO(227, 210, 142, 1),
      ),
      textTheme: buildTextTheme());

  static TextTheme buildTextTheme() {
    return TextTheme(
      displayLarge: GoogleFonts.ubuntuMono(
        fontWeight: FontWeight.w200,
        fontSize: 55,
      ),
      displayMedium: GoogleFonts.ubuntuMono(
        fontWeight: FontWeight.w300,
        fontSize: 20,
      ),
      displaySmall: GoogleFonts.ubuntuMono(
        fontWeight: FontWeight.w100,
        fontSize: 18,
      ),
    );
  }
}
