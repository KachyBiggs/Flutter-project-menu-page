import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Placeholder for back navigation icon and three dots icon
          leading: IconButton(
            icon: Image.asset('assets/arrow left.png'),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/dots_icon.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Text(
                  'How to make french toast',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    'Images/Dish.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Image.asset('Images/Play button.png'
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'Images/star.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '4,5',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '  (300 Reviews)',
                          style: TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        'Follow',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ingredients',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '5 items',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Example of ingredient item
              const IngredientItem(image: 'Images/Tea.png', name: 'Bread', quantity: '200g'),
              const IngredientItem(image: 'Images/Burger.png', name: 'Eggs', quantity: '200g'),
              const IngredientItem(image: 'Images/Tea.png', name: 'Milk', quantity: '200g'),
            ],
          ),
        ),
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;

  const IngredientItem({
    Key? key,
    required this.image,
    required this.name,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                quantity,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
