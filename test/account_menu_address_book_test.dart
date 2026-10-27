import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Address book"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Address book'));
    expect(find.text('Address book', skipOffstage: false), findsOneWidget);
    expect(find.text('Adress book', skipOffstage: false), findsNothing);
  });
}
