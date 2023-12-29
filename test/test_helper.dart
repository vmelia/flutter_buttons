import 'package:flutter/material.dart';
import 'package:flutter_buttons/styles.dart';
import 'package:flutter_buttons/themes.dart';
import 'package:flutter_buttons/widgets.dart';

class TestHelper {
  static SuperButton superButton({
    String? text,
    Color? colour,
    Color? textColour,
    EdgeInsets? padding,
    ShapeBorder? shapeBorder,
  }) {
    final defaultStyle = ThemeDataProvider.defaultSuperButtonStyle;
    final style = SuperButtonStyle(
      colour: colour ?? defaultStyle.colour,
      textColour: textColour ?? defaultStyle.textColour,
      padding: padding ?? EdgeInsets.zero,
      shapeBorder: shapeBorder ?? defaultStyle.shapeBorder,
    );
    return SuperButton(
      text: text ?? 'text',
      style: style,
      onPressed: () {},
    );
  }
}
