import 'package:flutter/material.dart';
import '../models/item.dart'; // Pastikan model Item di-import

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),  // Perbaikan penulisan Item
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Price: ${item.price}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item, // Passing the item to ItemPage
              );
            },
          );
        },
      ),
    );
  }
}