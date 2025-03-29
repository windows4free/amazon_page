import 'package:amazon_web/screens/StockupCollege.dart';
import 'package:flutter/material.dart';
import 'barra_nav.dart';
import 'offers.dart';
import 'bargains_finds.dart';
import 'men_must_have_shoes.dart';
import 'sign_in_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: HomeScreen(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OffToCollegeDeals(),
            const SizedBox(height: 30),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(child: UniformCard(child: BargainsFinds())),
                SizedBox(width: 10),
                Expanded(child: UniformCard(child: StockUpForCollege())),
                SizedBox(width: 10),
                Expanded(child: UniformCard(child: MensMustHaveShoes())),
                SizedBox(width: 10),
                Expanded(child: SignInCard()), // NUEVO
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UniformCard extends StatelessWidget {
  final Widget child;
  const UniformCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}

class SignInCard extends StatelessWidget {
  const SignInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330, // mismo alto que los UniformCard
      child: Column(
        children: [
          // Sign in card blanca
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const SignInSection(),
          ),

          const SizedBox(height: 8),

          // Banner azul expandido al resto del alto
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/anuncioo.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
