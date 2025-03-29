// File: lib/screens/off_to_college_deals.dart
import 'package:flutter/material.dart';

class OffToCollegeDeals extends StatelessWidget {
  const OffToCollegeDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFE3E6E6),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título y subtítulos
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Off to ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'College',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF0C14B),
                  ),
                ),
                TextSpan(
                  text: ' Deals',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Text('Amazon Devices with Alexa', style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          Text('Limited-time offer', style: TextStyle(fontSize: 12)),
          SizedBox(height: 15),

          // Productos con navegación
          Row(
            children: [
              // Flecha izquierda
              Icon(Icons.chevron_left, size: 40),

              // Productos
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Echo Input
                    _buildProduct(
                      'echo input',
                      'assets/images/echo_input.png',
                      '34.99',
                      '19.99',
                    ),

                    // Fire TV Stick
                    _buildProduct(
                      'fire tv stick',
                      'assets/images/fire_tv_stick.png',
                      '39.99',
                      '29.99',
                    ),

                    // Echo Dot
                    _buildProduct(
                      'echo dot',
                      'assets/images/echo_dot.png',
                      '49.99',
                      '29.99',
                    ),

                    // Fire HD10
                    _buildProduct(
                      'fire HD10',
                      'assets/images/fire_hd10.png',
                      '149.99',
                      '99.99',
                    ),
                  ],
                ),
              ),

              // Flecha derecha
              Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProduct(
    String name,
    String imagePath,
    String oldPrice,
    String newPrice,
  ) {
    return Column(
      children: [
        // Imagen del producto
        Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.contain),

        // Nombre del producto
        Text(name, style: TextStyle(fontSize: 14)),

        // Precios
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Precio anterior tachado
            Text(
              '\$$oldPrice',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 4),

            // Precio de oferta
            Text(
              '\$$newPrice',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
