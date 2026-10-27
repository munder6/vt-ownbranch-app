import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('first cart item is spelled "Coffee beans"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(items[0], 'Coffee beans');
    expect(find.text('Coffee beans'), findsOneWidget);
    expect(find.text('Cofee beans'), findsNothing);
  });
}
