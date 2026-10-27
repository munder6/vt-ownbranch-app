import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Return policy"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Return policy'));
    expect(find.text('Return policy', skipOffstage: false), findsOneWidget);
    expect(find.text('Retrun policy', skipOffstage: false), findsNothing);
  });
}
