import 'package:flutter/material.dart';

void main() {
  runApp(const CartApp());
}

const items = ['Coffee beans', 'Paper filters', 'Milk frother'];

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
              for (final item in items) Text(item, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              Text('Totl: ${items.length} items', key: const Key('cart-total'), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
