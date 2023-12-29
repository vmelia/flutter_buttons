import 'package:flutter/material.dart';

import '../styles/super_button_style.dart';
import '../widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final superButtonStyle = Theme.of(context).extension<SuperButtonStyle>()!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(superButtonStyle, 'red', Colors.red),
            _buildButton(superButtonStyle, 'orange', Colors.orange),
            _buildButton(superButtonStyle, 'yellow', Colors.yellow),
            _buildButton(superButtonStyle, 'green', Colors.green),
            _buildButton(superButtonStyle, 'blue', Colors.blue),
            _buildButton(superButtonStyle, 'indigo', Colors.indigo),
            _buildButton(superButtonStyle, 'deepPurple', Colors.deepPurple),
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
