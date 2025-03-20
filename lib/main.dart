import 'package:amazon_web/screens/bargains_finds.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon College Deals',
      debugShowCheckedModeBanner: false,
      home: BargainsFinds(),
    );
  }
}
