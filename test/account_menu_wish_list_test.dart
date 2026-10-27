import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Wish list"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Wish list'));
    expect(find.text('Wish list', skipOffstage: false), findsOneWidget);
    expect(find.text('Wish lsit', skipOffstage: false), findsNothing);
  });
}
