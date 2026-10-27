import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('second cart item is spelled "Paper filters"', (tester) async {
    await tester.pumpWidget(const CartApp());
    expect(items[1], 'Paper filters');
    expect(find.text('Paper filters'), findsOneWidget);
    expect(find.text('Paper fliters'), findsNothing);
  });
}
