import 'package:flutter/material.dart';

class SuperButtonStyle extends ThemeExtension<SuperButtonStyle> {
  const SuperButtonStyle({
    required this.colour,
    required this.textColour,
    required this.padding,
    required this.shapeBorder,
  });

  @override
  SuperButtonStyle copyWith({
    Color? colour,
    Color? textColour,
    EdgeInsets? padding,
    ShapeBorder? shapeBorder,
  }) =>
      SuperButtonStyle(
        colour: colour ?? this.colour,
        textColour: textColour ?? this.textColour,
        padding: padding ?? this.padding,
        shapeBorder: shapeBorder ?? this.shapeBorder,
      );

  @override
  ThemeExtension<SuperButtonStyle> lerp(
    covariant ThemeExtension<SuperButtonStyle>? other,
    double t,
  ) {
    if (other is! SuperButtonStyle) {
      return this;
    }

    return SuperButtonStyle(
      colour: Color.lerp(colour, other.colour, t)!,
      textColour: Color.lerp(textColour, other.textColour, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      shapeBorder: ShapeBorder.lerp(shapeBorder, other.shapeBorder, t)!,
    );
  }

  final Color colour;
  final Color textColour;
  final EdgeInsets padding;
  final ShapeBorder shapeBorder;
}
