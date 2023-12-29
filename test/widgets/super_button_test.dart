import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../test_helper.dart';

void main() {
  setUp(() {});

  group('super button', () {
    testGoldens('renders correctly', (WidgetTester tester) async {
      final builder = GoldenBuilder.grid(columns: 3, widthToHeightRatio: 1.4)
        ..addScenario('default', TestHelper.superButton())
        ..addScenario('short text', TestHelper.superButton(text: 'x'))
        ..addScenario('long text', TestHelper.superButton(text: 'this is longer text'))
        ..addScenario('light button', TestHelper.superButton(colour: Colors.yellow))
        ..addScenario('dark button', TestHelper.superButton(colour: Colors.blue))
        ..addScenario('light text', TestHelper.superButton(textColour: Colors.yellow))
        ..addScenario('dark text', TestHelper.superButton(textColour: Colors.blue))
        ..addScenario('with padding', TestHelper.superButton(padding: const EdgeInsets.all(20.0)))
        ..addScenario('circle border', TestHelper.superButton(shapeBorder: const CircleBorder()));

      await tester.pumpWidgetBuilder(builder.build());

      await screenMatchesGolden(tester, 'SuperButton');
    });
  });
}
