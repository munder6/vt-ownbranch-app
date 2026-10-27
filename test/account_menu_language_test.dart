import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('account menu entry reads "Language"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(menu, contains('Language'));
    expect(find.text('Language', skipOffstage: false), findsOneWidget);
    expect(find.text('Langauge', skipOffstage: false), findsNothing);
  });
}
