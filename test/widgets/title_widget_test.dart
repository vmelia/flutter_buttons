import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../test_helper.dart';

void main() {
  setUp(() {});

  group('title widget', () {
    testGoldens('renders correctly', (WidgetTester tester) async {
      const textStyle = TextStyle(
        color: Colors.green,
        backgroundColor: Colors.yellow,
        fontSize: 30,
      );
      final builder = GoldenBuilder.grid(columns: 3, widthToHeightRatio: 1.4)
        ..addScenario('default', TestHelper.titleWidget())
        ..addScenario('short text', TestHelper.titleWidget(text: 'x'))
        ..addScenario('long text', TestHelper.titleWidget(text: 'this is longer text'))
        ..addScenario('text align left', TestHelper.titleWidget(textAlign: TextAlign.left))
        ..addScenario('text align center', TestHelper.titleWidget(textAlign: TextAlign.center))
        ..addScenario('text align right', TestHelper.titleWidget(textAlign: TextAlign.right))
        ..addScenario('text style', TestHelper.titleWidget(textStyle: textStyle));

      await tester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(tester, 'titleWidget');
    });
  });
}
