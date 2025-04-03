// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class OffToCollegeDeals extends StatefulWidget {
  const OffToCollegeDeals({super.key});

  @override
  State<OffToCollegeDeals> createState() => _OffToCollegeDealsState();
}

class _OffToCollegeDealsState extends State<OffToCollegeDeals> {
  // Índice del producto actualmente visible (para dispositivos móviles)
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  // Lista de productos
  final List<ProductItem> _products = [
    ProductItem(
      name: 'echo input',
      imagePath: 'assets/images/echo_input.png',
      originalPrice: '34',
      salePrice: '19',
    ),
    ProductItem(
      name: 'fire tv stick',
      imagePath: 'assets/images/fire_tv_stick.png',
      originalPrice: '39',
      salePrice: '29',
    ),
    ProductItem(
      name: 'echo dot',
      imagePath: 'assets/images/echo_dot.png',
      originalPrice: '49',
      salePrice: '29',
    ),
    ProductItem(
      name: 'fire HD10',
      imagePath: 'assets/images/fire_hd10.png',
      originalPrice: '149',
      salePrice: '99',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Determinar si estamos en modo móvil o escritorio
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          // Encabezados
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber[700],
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
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Productos - Versión escritorio o móvil
          if (isDesktop)
            _buildDesktopProductsRow()
          else
            _buildMobileProductsCarousel(),
        ],
      ),
    );
  }

  // Vista de escritorio: todos los productos en una fila
  Widget _buildDesktopProductsRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          // Flecha izquierda
          IconButton(
            icon: const Icon(Icons.chevron_left, size: 36),
            onPressed: () {},
          ),

          // Productos
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  _products.map((product) => _buildProduct(product)).toList(),
            ),
          ),

          // Flecha derecha
          IconButton(
            icon: const Icon(Icons.chevron_right, size: 36),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // Vista móvil: carrusel de productos
  Widget _buildMobileProductsCarousel() {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          // Carrusel
          PageView.builder(
            controller: _pageController,
            itemCount: _products.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Center(child: _buildProduct(_products[index]));
            },
          ),

          // Flecha izquierda
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: const Icon(Icons.chevron_left, size: 36),
              onPressed:
                  _currentIndex > 0
                      ? () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                      : null,
            ),
          ),

          // Flecha derecha
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: const Icon(Icons.chevron_right, size: 36),
              onPressed:
                  _currentIndex < _products.length - 1
                      ? () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                      : null,
            ),
          ),
        ],
      ),
    );
  }

  // Widget para cada producto individual
  Widget _buildProduct(ProductItem product) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Imagen del producto
        Image.asset(
          product.imagePath,
          width: 120,
          height: 120,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),

        // Nombre del producto
        Text(
          product.name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),

        // Precios
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            // Precio original
            Text(
              '\$${product.originalPrice}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
            Text(
              '99',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[700],
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
            const SizedBox(width: 4),

            // Precio de oferta
            Text(
              '\$${product.salePrice}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              '99',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Clase para almacenar la información de cada producto
class ProductItem {
  final String name;
  final String imagePath;
  final String originalPrice;
  final String salePrice;

  ProductItem({
    required this.name,
    required this.imagePath,
    required this.originalPrice,
    required this.salePrice,
  });
}
