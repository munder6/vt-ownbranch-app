import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Receive email updates"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Receive email updates'));
    expect(find.text('Receive email updates', skipOffstage: false), findsOneWidget);
    expect(find.text('Receive updates', skipOffstage: false), findsNothing);
    expect(find.text('Recieve updates', skipOffstage: false), findsNothing);
  });
}
