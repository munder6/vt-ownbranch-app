import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Order history"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Order history'));
    expect(find.text('Order history', skipOffstage: false), findsOneWidget);
    expect(find.text('Order histroy', skipOffstage: false), findsNothing);
  });
}
