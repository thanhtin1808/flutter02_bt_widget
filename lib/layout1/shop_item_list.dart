import 'package:flutter/material.dart';

class ShopItemListScreen extends StatelessWidget {
  const ShopItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Apple', 'stock': '1000 ready stock', 'price': '\$20'},
      {'name': 'Banana', 'stock': '1000 ready stock', 'price': '\$5'},
      {'name': 'Mango', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$10'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: items.length,
        separatorBuilder: (context, index) =>
            const Divider(height: 50, color: Colors.grey),
        itemBuilder: (context, index) {
          final item = items[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF5b913a),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name']!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item['stock']!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item['price']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.black45),
                onPressed: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}