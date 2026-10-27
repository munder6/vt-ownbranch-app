import 'package:flutter/material.dart';

void main() {
  runApp(const CartApp());
}

const items = [
  'Coffee beans',
  'Paper filters',
  'Milk frother',
];

// The account menu, one entry per line.
const menu = [
  'Wellcome back',
  'Your oders',
  'Save for latter',
  'Gift wraping',
  'Aply coupon',
  'Track packege',
  'Retrun policy',
  'Contact suport',
  'Payment metods',
  'Adress book',
  'Notifcations',
  'Langauge',
  'Recieve updates',
  'Privacy setings',
  'Log ot',
];

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scratch Cart',
      home: Scaffold(
        appBar: AppBar(title: const Text('Your cart')),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const Text('Items in your cart', key: Key('cart-heading'), style: TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            for (final item in items) Text(item, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text('Total: ${items.length} items', key: const Key('cart-total'), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            const Text('Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            for (final entry in menu) Padding(padding: const EdgeInsets.symmetric(vertical: 4), child: Text(entry, style: const TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
