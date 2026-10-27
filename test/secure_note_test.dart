import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('secure note is spelled "Secure checkout"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final text = tester.widget<Text>(find.byKey(const Key('secure-note')));
    expect(text.data, 'Secure checkout');
    expect(find.text('Secure chekout'), findsNothing);
  });
}
