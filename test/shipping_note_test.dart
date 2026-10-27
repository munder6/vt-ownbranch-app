import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('shipping note is spelled "Free shipping over \$50"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final text = tester.widget<Text>(find.byKey(const Key('shipping-note')));
    expect(text.data, 'Free shipping over \$50');
  });
}
