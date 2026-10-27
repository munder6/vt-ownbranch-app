import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('third cart item is spelled "Milk frother"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(items[2], 'Milk frother');
    expect(find.text('Milk frother'), findsOneWidget);
    expect(find.text('Milk forther'), findsNothing);
  });
}
