import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('first account menu entry reads "Welcome back"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu.first, 'Welcome back');
    expect(find.text('Welcome back', skipOffstage: false), findsOneWidget);
    expect(find.text('Wellcome back', skipOffstage: false), findsNothing);
  });
}
