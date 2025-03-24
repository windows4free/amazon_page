import 'package:flutter/material.dart';

class MensMustHaveShoes extends StatelessWidget {
  const MensMustHaveShoes({Key? key}) : super(key: key);

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
              "Men's must-have shoes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.9,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                _buildShoeItem(
                  "Athletic sneakers",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkHypaPnsfA5DP7pM4FDx7wgQJLRMpQ5BM6g&s",
                ),
                _buildShoeItem(
                  "Sandals",
                  "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1000,h_1000/global/384139/01/sv01/fnd/SEA/fmt/png/Leadcat-2.0-Sandals",
                ),
                _buildShoeItem(
                  "Loafers",
                  "https://www.rancourtandcompany.com/cdn/shop/products/Ran3_17silo0173.jpg?v=1606338537",
                ),
                _buildShoeItem(
                  "Casual sneakers",
                  "https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-822,w-940,cm-pad_resize/data/ruosh/22102023img/1241111010_8.jpg",
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "See more men's styles",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShoeItem(String shoeName, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, width: 55, height: 55, fit: BoxFit.cover),
          const SizedBox(height: 4),
          Text(shoeName, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
