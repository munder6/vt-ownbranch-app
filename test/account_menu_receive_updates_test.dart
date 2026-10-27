import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Receive updates"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Receive updates'));
    expect(find.text('Receive updates', skipOffstage: false), findsOneWidget);
    expect(find.text('Recieve updates', skipOffstage: false), findsNothing);
  });
}
