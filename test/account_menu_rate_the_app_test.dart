import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Rate the app"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Rate the app'));
    expect(find.text('Rate the app', skipOffstage: false), findsOneWidget);
    expect(find.text('Rate the ap', skipOffstage: false), findsNothing);
  });
}
