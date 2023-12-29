import 'package:flutter_buttons/pages.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  setUp(() {});

  group('main page', () {
    testGoldens(
      'renders correctly',
      (tester) async {
        final builder = DeviceBuilder()..addScenario(widget: const MainPage());

        await tester.pumpDeviceBuilder(builder);
        await screenMatchesGolden(tester, 'MainPage');
      },
    );
  });
}
