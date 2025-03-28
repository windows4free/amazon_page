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
        preferredSize: const Size.fromHeight(102),
        child: Column(
          children: [
            Container(
              color: const Color(0xFF131921),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {},
                  ),
                  Image.asset('assets/images/Amzg.jpg', height: 32),
                  const SizedBox(width: 4),
                  const Text(
                    'Try Prime',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF00A8E1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const DeliveryInfo(),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SearchBar(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.language, color: Colors.white, size: 16),
                          Text(
                            "EN",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const AccountCartSection(),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF232F3E),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      NavLink("Today's Deals"),
                      SizedBox(width: 80),
                      NavLink("Your Amazon.com"),
                      SizedBox(width: 80),
                      NavLink("Gift Cards"),
                      SizedBox(width: 80),
                      NavLink("Help"),
                      SizedBox(width: 80),
                      NavLink("Whole Foods"),
                      SizedBox(width: 80),
                      NavLink("Registry"),
                      SizedBox(width: 80),
                      NavLink("Sell"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Off to College ",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Text(
                        "deals",
                        style: TextStyle(
                          color: Color(0xFFFACC15),
                          fontSize: 13,
                        ),
                      ),
                    ],
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

class NavLink extends StatelessWidget {
  final String label;
  const NavLink(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(color: Colors.white, fontSize: 13),
    );
  }
}

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.location_on, color: Colors.white, size: 18),
        SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver to",
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            Text(
              "Seattle 98103",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              color: Color(0xFFEDEDED),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
            ),
            child: Row(
              children: const [
                Text(
                  "All",
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.black, size: 18),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color(0xFFFFA41C),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(4)),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white, size: 20),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

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
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            Row(
              children: const [
                Text(
                  "Account & Lists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.white, size: 16),
              ],
            ),
          ],
        ),
        const SizedBox(width: 12),
        const Text(
          "Orders",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          "Try Prime",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        Stack(
          children: [
            const Icon(Icons.shopping_cart, color: Colors.white, size: 26),
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
                    fontSize: 10,
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
