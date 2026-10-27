import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Apply coupon"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Apply coupon'));
    expect(find.text('Apply coupon', skipOffstage: false), findsOneWidget);
    expect(find.text('Aply coupon', skipOffstage: false), findsNothing);
  });
}
