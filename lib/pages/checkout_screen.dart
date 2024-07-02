import 'package:flutter/material.dart';
import 'order_success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  final List<String> checkoutItems;
  final Function(String) removeItem;

  CheckoutScreen({required this.checkoutItems, required this.removeItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: checkoutItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(checkoutItems[index]),
                trailing: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    removeItem(checkoutItems[index]);
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderSuccessScreen(),
                ),
              );
            },
            child: Text('Place Order'),
          ),
        ),
      ],
    );
  }
}
