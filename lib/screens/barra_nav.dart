import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

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
              color: const Color.fromARGB(
                255,
                14,
                13,
                13,
              ), // color arriba negro
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Menú, logo y dirección a la izquierda
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white),
                        onPressed: () {},
                      ),
                      Image.asset(
                        'assets/images/Amzg.jpg', // Imagen del logo en assets
                        height: 55,
                      ),
                      const SizedBox(width: 15),
                      const DeliveryInfo(),
                    ],
                  ),
                  const Spacer(),
                  // Barra de búsqueda
                  const Expanded(flex: 3, child: SearchBar()),
                  const Spacer(),
                  // Sección de cuenta y carrito a la derecha
                  const AccountCartSection(),
                ],
              ),
            ),
            const SecondaryNavBar(),
          ],
        ),
      ),
      body: const Center(child: Text("Contenido Principal")),
    );
  }
}

// Información de entrega
class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.location_on, color: Colors.white, size: 18),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver to",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text(
              "Seattle 98103",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Barra de búsqueda
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Color(0xFFEDEDED),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
            ),
            child: Row(
              children: const [
                Text("All", style: TextStyle(color: Colors.black)),
                Icon(Icons.arrow_drop_down, color: Colors.black),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color(0xFFFFA41C),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(8)),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

// Sección de cuenta y carrito
class AccountCartSection extends StatelessWidget {
  const AccountCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Sign in",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Row(
              children: const [
                Text(
                  "Account & Lists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.white, size: 16),
              ],
            ),
          ],
        ),
        const SizedBox(width: 20),
        const Text(
          "Orders",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20),
        const Text(
          "Try Prime",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20),
        Stack(
          children: [
            const Icon(Icons.shopping_cart, color: Colors.white, size: 28),
            Positioned(
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Barra de navegación secundaria
class SecondaryNavBar extends StatelessWidget {
  const SecondaryNavBar({super.key});

  final List<String> items = const [
    "Today's Deals",
    "Your Amazon.com",
    "Gift Cards",
    "Help",
    "Whole Foods",
    "Registry",
    "Sell",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0), // color negro abajo
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var item in items)
            Text(
              item,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          Row(
            children: const [
              Text("EN", style: TextStyle(color: Colors.white, fontSize: 14)),
              SizedBox(width: 4),
              Icon(Icons.language, color: Colors.white, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}
