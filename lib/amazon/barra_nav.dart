import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: [
            Container(
              color: const Color(0xFF131921),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/amazon_logo.jpg',
                    height: 40,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text(
                        'Amazon',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Deliver to Wilson',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'Villanueva, 21101',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          color: const Color(0xFFEDEDED),
                          child: Row(
                            children: const [
                              Text('All'),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.white,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Amazon',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Color(0xFFFFA41C),
                          child: const Icon(Icons.search, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://flagcdn.com/us.svg',
                        width: 18,
                        height: 12,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.flag,
                            color: Colors.white,
                            size: 12,
                          );
                        },
                      ),
                      const Text(
                        'EN',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Hello, Wilson',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Row(
                        children: [
                          Text(
                            'Account & Lists',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Returns',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Text(
                        '& Orders',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Stack(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Cart',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF232F3E),
              height: 40,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.menu, color: Colors.white),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.bubble_chart,
                          size: 14,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 4),
                        Text('Rufus', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Today's Deals",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Buy Again",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Customer Service",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Registry",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Gift Cards",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Sell",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Contenido Principal")),
    );
  }
}
