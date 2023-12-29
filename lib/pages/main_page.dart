import 'package:flutter/material.dart';

import '../themes.dart';
import '../widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleWidget(text: 'Main Page', style: ThemeDataProvider.titleWidgetStyle)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('Red', Colors.red),
            _buildButton('Orange', Colors.orange),
            _buildButton('Yellow', Colors.yellow),
            _buildButton('Green', Colors.green),
            _buildButton('Blue', Colors.blue),
            _buildButton('Indigo', Colors.indigo),
            _buildButton('Violet', Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}

SuperButton _buildButton(String text, Color colour) {
  return SuperButton(
    text: text,
    style: ThemeDataProvider.superButtonStyle.copyWith(colour: colour),
    onPressed: () {},
  );
}
