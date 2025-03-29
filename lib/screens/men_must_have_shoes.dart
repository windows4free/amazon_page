import 'package:flutter/material.dart';

class MensMustHaveShoes extends StatelessWidget {
  const MensMustHaveShoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Text(
            "Men's must-have shoes",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: const Color(0xFFF3F3F3),
          padding: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.2,
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
        const SizedBox(height: 12),
        const Text(
          "See more men's styles",
          style: TextStyle(color: Colors.blue, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildShoeItem(String name, String imageUrl) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
