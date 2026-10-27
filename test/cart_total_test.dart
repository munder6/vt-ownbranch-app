import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('cart total label is spelled "Total"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final text = tester.widget<Text>(find.byKey(const Key('cart-total')));
    expect(text.data, 'Total: 3 items');
  });
}
