import 'package:flutter/material.dart';

import '../styles.dart';

class ThemeDataProvider {
  static SuperButtonStyle get defaultSuperButtonStyle => const SuperButtonStyle(
        colour: Colors.blueGrey,
        textColour: Colors.white,
        padding: EdgeInsets.all(8.0),
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(),
        ),
      );

  static ThemeData get themeData => ThemeData(
        extensions: <ThemeExtension<dynamic>>{
          defaultSuperButtonStyle,
        },
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
}
