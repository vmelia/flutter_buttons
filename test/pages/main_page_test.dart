import 'package:flutter_buttons/pages.dart';
import 'package:flutter_buttons/themes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  final superButtonStyle = ThemeDataProvider.defaultSuperButtonStyle;

  setUp(() {});

  group('main page', () {
    testGoldens(
      'renders correctly',
      (tester) async {
        final builder = DeviceBuilder()..addScenario(widget: MainPage(superButtonStyle: superButtonStyle));

        await tester.pumpDeviceBuilder(builder);
        await screenMatchesGolden(tester, 'MainPage');
      },
    );
  });
}
