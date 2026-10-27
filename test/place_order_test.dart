import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('place order button is spelled "Place order"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final button = find.byKey(const Key('place-order'));
    final label = tester.widget<Text>(
      find.descendant(of: button, matching: find.byType(Text)),
    );
    expect(label.data, 'Place order');
    expect(find.text('Plcae order'), findsNothing);
  });
}
