import 'package:flutter/material.dart';

class TitleWidgetStyle {
  const TitleWidgetStyle({
    required this.textStyle,
    required this.textAlign,
    required this.padding,
  });

  TitleWidgetStyle copyWith({
    TextStyle? textStyle,
    TextAlign? textAlign,
    EdgeInsets? padding,
  }) =>
      TitleWidgetStyle(
        textStyle: textStyle ?? this.textStyle,
        textAlign: textAlign ?? this.textAlign,
        padding: padding ?? this.padding,
      );

  final TextAlign textAlign;
  final TextStyle textStyle;
  final EdgeInsets padding;
}
