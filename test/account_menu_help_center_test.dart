import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Help center"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Help center'));
    expect(find.text('Help center', skipOffstage: false), findsOneWidget);
    expect(find.text('Help cetner', skipOffstage: false), findsNothing);
  });
}
