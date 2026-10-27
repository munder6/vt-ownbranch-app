import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Notifications"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Notifications'));
    expect(find.text('Notifications', skipOffstage: false), findsOneWidget);
    expect(find.text('Notifcations', skipOffstage: false), findsNothing);
  });
}
