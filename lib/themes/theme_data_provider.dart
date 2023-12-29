import 'package:flutter/material.dart';

import '../styles.dart';

class ThemeDataProvider {
  static SuperButtonStyle get superButtonStyle => const SuperButtonStyle(
        colour: Colors.blueGrey,
        textColour: Colors.white,
        padding: EdgeInsets.all(8.0),
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(),
        ),
      );

  static TitleWidgetStyle get titleWidgetStyle => const TitleWidgetStyle(
        textStyle: TextStyle(),
        textAlign: TextAlign.center,
        padding: EdgeInsets.all(8.0),
      );

  static ThemeData get themeData => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
}
