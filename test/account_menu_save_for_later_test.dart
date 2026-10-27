import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Save for later"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Save for later'));
    expect(find.text('Save for later', skipOffstage: false), findsOneWidget);
    expect(find.text('Save for latter', skipOffstage: false), findsNothing);
  });
}
