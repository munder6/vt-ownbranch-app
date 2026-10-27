import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Payment methods"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Payment methods'));
    expect(find.text('Payment methods', skipOffstage: false), findsOneWidget);
    expect(find.text('Payment metods', skipOffstage: false), findsNothing);
  });
}
