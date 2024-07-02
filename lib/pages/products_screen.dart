import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "Product 1", "image": "assets/images/product1.png"},
    {"name": "Product 2", "image": "assets/images/product2.png"},
    {"name": "Product 3", "image": "assets/images/product3.png"},
  ];
  final Function(String) addItem;

  ProductsScreen({required this.addItem});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(products[index]["image"]!),
          title: Text(products[index]["name"]!),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              addItem(products[index]["name"]!);
            },
          ),
        );
      },
    );
  }
}
