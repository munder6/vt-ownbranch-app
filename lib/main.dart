import 'package:flutter/material.dart';

void main() {
  runApp(const CartApp());
}

const items = [
  'Cofee beans',
  'Paper filters',
  'Milk forther',
];

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scratch Cart',
      home: Scaffold(
        appBar: AppBar(title: const Text('Your cart')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Items in your cart', key: Key('cart-heading'), style: TextStyle(fontSize: 14)),
              const SizedBox(height: 8),
              for (final item in items) Text(item, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              Text('Total: ${items.length} items', key: const Key('cart-total'), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              ElevatedButton(
                key: const Key('place-order'),
                onPressed: () {},
                child: const Text('Plcae order'),
              ),
              const SizedBox(height: 24),
              const Text('Free shipping over \$50', key: Key('shipping-note')),
              const SizedBox(height: 8),
              const Text('Delivery in 2-3 dyas', key: Key('delivery-note')),
              const SizedBox(height: 8),
              const Text('Secure checkout', key: Key('secure-note')),
            ],
          ),
        ),
      ),
    );
  }
}
