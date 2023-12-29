import 'package:flutter/material.dart';

import 'pages.dart';
import 'themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final superButtonStyle = ThemeDataProvider.defaultSuperButtonStyle;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataProvider.themeData,
      home: MainPage(superButtonStyle: superButtonStyle),
    );
  }
}
