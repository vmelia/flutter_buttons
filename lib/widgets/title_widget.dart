import 'package:flutter/material.dart';

import '../styles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.text,
    required this.style,
  });

  final String text;
  final TitleWidgetStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: style.padding,
      child: Text(
        text,
        textAlign: style.textAlign,
        style: style.textStyle,
      ),
    );
  }
}
