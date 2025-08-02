import 'package:flutter/material.dart';

class HomeShop1Screen extends StatelessWidget {
  const HomeShop1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Balance Card
            Container(
              padding: const EdgeInsets.all(20),  
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Your Balance',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '\$1,700.00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5b913a),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Discount Card
            Container(
              alignment: Alignment.bottomLeft,
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF5b913a),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Text(
                'Buy Orange 10 Kg\nGet discount 25%',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 28),
            // For you title
            const Text(
              'For you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // Category Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                childAspectRatio: 0.95,
                children: [
                  _CategoryCard(
                    icon: Icons.circle, // Replace with your asset or custom icon
                    label: 'Fruit',
                    image: '🍊', // Emoji for demo, replace with Image.asset if needed
                  ),
                  _CategoryCard(
                    icon: Icons.circle,
                    label: 'Vegetable', 
                    image: '🥬',
                  ),
                  _CategoryCard(
                    icon: Icons.circle,
                    label: 'Cookies',
                    image: '🍩',
                  ),
                  _CategoryCard(
                    icon: Icons.circle,
                    label: 'Meat',
                    image: '🥩',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String image; // Use emoji or asset path

  const _CategoryCard({
    super.key,
    required this.icon,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            image,
            style: const TextStyle(fontSize: 48),
          ),
          const SizedBox(height: 20),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}