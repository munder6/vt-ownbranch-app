import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vt_ownbranch/main.dart';

void main() {
  testWidgets('cart heading is spelled "Items in your cart"', (tester) async {
    await tester.pumpWidget(const CartApp());
    final heading = tester.widget<Text>(find.byKey(const Key('cart-heading')));
    expect(heading.data, 'Items in your cart');
  });
}
