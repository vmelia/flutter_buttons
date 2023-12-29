import 'package:flutter/material.dart';

import '../styles/super_button_style.dart';
import '../widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.superButtonStyle});
  final SuperButtonStyle superButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(superButtonStyle, 'Red', Colors.red),
            _buildButton(superButtonStyle, 'Orange', Colors.orange),
            _buildButton(superButtonStyle, 'Yellow', Colors.yellow),
            _buildButton(superButtonStyle, 'Green', Colors.green),
            _buildButton(superButtonStyle, 'Blue', Colors.blue),
            _buildButton(superButtonStyle, 'Indigo', Colors.indigo),
            _buildButton(superButtonStyle, 'Violet', Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}

SuperButton _buildButton(SuperButtonStyle style, String text, Color colour) {
  return SuperButton(
    text: text,
    style: style.copyWith(colour: colour),
    onPressed: () {},
  );
}
