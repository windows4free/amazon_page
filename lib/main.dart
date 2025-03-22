import 'package:amazon_web/screens/StockupCollege.Dart';
import 'package:amazon_web/screens/bargains_finds.dart';
import 'package:amazon_web/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon College Deals',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE3E6E6),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20), 
                  child: Row(
                    children: [
                      BargainsFinds(),
                      const SizedBox(width: 10), 
                      StockUpForCollege(),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 300, 
                  child: AmazonSignInScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
