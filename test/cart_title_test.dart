import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('cart app bar title is spelled "Your cart"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final title = tester.widget<Text>(
      find.descendant(of: find.byType(AppBar), matching: find.byType(Text)),
    );
    expect(title.data, 'Your cart');
  });
}
