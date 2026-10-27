import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('last account menu entry reads "Log out"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu.last, 'Log out');
    expect(find.text('Log out', skipOffstage: false), findsOneWidget);
    expect(find.text('Log ot', skipOffstage: false), findsNothing);
  });
}
