import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('delivery note is spelled "Delivery in 2-3 days"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final text = tester.widget<Text>(find.byKey(const Key('delivery-note')));
    expect(text.data, 'Delivery in 2-3 days');
    expect(find.text('Delivery in 2-3 dyas'), findsNothing);
  });
}
