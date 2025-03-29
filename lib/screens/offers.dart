import 'package:flutter/material.dart';

class OffToCollegeDeals extends StatelessWidget {
  const OffToCollegeDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Flecha izquierda
          const Icon(Icons.chevron_left, size: 36),

          // Contenido centrado: texto + productos
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Texto (centrado dentro del espacio entre las flechas)
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                              const TextSpan(
                                text: 'Off to ',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'College',
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Color(0xFFFACC15),
                                  color: Colors.black,
                                ),
                              ),
                              const TextSpan(
                                text: ' Deals',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Amazon Devices with Alexa',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Limited-time offer',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // Productos
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildProduct(
                        'echo input',
                        'assets/images/echo_input.png',
                        '34.99',
                        '19.99',
                      ),
                      _buildProduct(
                        'fire tv stick',
                        'assets/images/fire_tv_stick.png',
                        '39.99',
                        '29.99',
                      ),
                      _buildProduct(
                        'echo dot',
                        'assets/images/echo_dot.png',
                        '49.99',
                        '29.99',
                      ),
                      _buildProduct(
                        'fire HD10',
                        'assets/images/fire_hd10.png',
                        '149.99',
                        '99.99',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Flecha derecha
          const Icon(Icons.chevron_right, size: 36),
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
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '\$$oldPrice',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '\$$newPrice',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
