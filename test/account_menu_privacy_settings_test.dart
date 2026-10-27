import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Privacy settings"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Privacy settings'));
    expect(find.text('Privacy settings', skipOffstage: false), findsOneWidget);
    expect(find.text('Privacy setings', skipOffstage: false), findsNothing);
  });
}
