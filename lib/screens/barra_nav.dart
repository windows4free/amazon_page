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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.13),
        child: Column(
          children: [
            Container(
              color: const Color(0xFF131921),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              height: screenHeight * 0.07,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {},
                  ),
                  Image.asset(
                    'assets/images/Amzg.jpg',
                    height: screenHeight * 0.04,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Try Prime',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF00A8E1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  const DeliveryInfo(),
                  SizedBox(width: screenWidth * 0.02),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.01,
                      ),
                      child: SearchBar(),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Flexible(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "EN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Icon(Icons.language, color: Colors.white, size: 16),
                          ],
                        ),
                        SizedBox(width: 10),
                        const Flexible(child: AccountCartSection()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF232F3E),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              height: screenHeight * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          NavLink("Today's Deals"),
                          NavLink("Your Amazon.com"),
                          NavLink("Gift Cards"),
                          NavLink("Help"),
                          NavLink("Whole Foods"),
                          NavLink("Registry"),
                          NavLink("Sell"),
                        ],
                      ),
                    ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
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
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.05,
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
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.05,
            width: screenHeight * 0.05,
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
    return Wrap(
      spacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
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
        const Text(
          "Orders",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Try Prime",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
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
