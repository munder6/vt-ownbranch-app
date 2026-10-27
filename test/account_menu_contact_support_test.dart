import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Contact support"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Contact support'));
    expect(find.text('Contact support', skipOffstage: false), findsOneWidget);
    expect(find.text('Contact suport', skipOffstage: false), findsNothing);
  });
}
