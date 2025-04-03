import 'package:flutter/material.dart';

class StockUpForCollege extends StatelessWidget {
  const StockUpForCollege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 310,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '   Stock up for college',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/backpack.jpg',
                width: 210,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  Everything you need, on campus and off',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 30),
                Text(
                  '   Shop all Off to College',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}