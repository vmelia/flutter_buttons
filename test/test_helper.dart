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
    final style = SuperButtonStyle(
      colour: colour ?? ThemeDataProvider.superButtonStyle.colour,
      textColour: textColour ?? ThemeDataProvider.superButtonStyle.textColour,
      padding: padding ?? EdgeInsets.zero,
      shapeBorder: shapeBorder ?? ThemeDataProvider.superButtonStyle.shapeBorder,
    );
    return SuperButton(
      text: text ?? 'text',
      style: style,
      onPressed: () {},
    );
  }

  static TitleWidget titleWidget({
    String? text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    EdgeInsets? padding,
  }) {
    final style = TitleWidgetStyle(
      textStyle: textStyle ?? ThemeDataProvider.titleWidgetStyle.textStyle,
      textAlign: textAlign ?? ThemeDataProvider.titleWidgetStyle.textAlign,
      padding: padding ?? EdgeInsets.zero,
    );
    return TitleWidget(
      text: text ?? 'text',
      style: style,
    );
  }
}
