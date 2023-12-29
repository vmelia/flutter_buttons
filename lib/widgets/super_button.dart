import 'package:flutter/material.dart';

import '../styles.dart';

class SuperButton extends StatelessWidget {
  const SuperButton({
    super.key,
    required this.text,
    required this.style, 
    required this.onPressed,
  });
  
  final String text;
  final SuperButtonStyle style;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: style.colour,
      textColor: style.textColour,
      shape: style.shapeBorder,
      child: Padding(
        padding: style.padding,
        child: Text(text),
      ),
    );
  }
}
