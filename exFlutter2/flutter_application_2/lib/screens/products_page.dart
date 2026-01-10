import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  final List<Map<String, String>> products = const [
     {
    'name': 'iPhone 6',
    'price': '3000 DH',
    'image': 'assets/images/iphone6.JPG',
  },
  {
    'name': 'Pack Beauté — Crème & Sérum',
    'price': '450 DH',
    'image': 'assets/images/Pack_beaute_creme_serum.jpg',
  },
  {
    'name': 'Sac',
    'price': '800 DH',
    'image': 'assets/images/sac.jpg',
  },
  {
    'name': 'Sac à dos en cuir',
    'price': '1200 DH',
    'image': 'assets/images/sac_a_dos_en_cuir.jpg',
  },
  {
    'name': 'Casque sans fil Bluetooth',
    'price': '600 DH',
    'image': 'assets/images/Casque_sans_fil_Bluetooth.jpg',
  },
  {
    'name': 'Bouteille en verre verte',
    'price': '100 DH',
    'image': 'assets/images/bouteille_verre_verte.jpg',
  },
  {
    'name': 'Apple Watch Series 11',
    'price': '3500 DH',
    'image': 'assets/images/apple_watch_series_11.jpg',
  },
  {
    'name': 'Sérum visage en bouteille transparente',
    'price': '200 DH',
    'image': 'assets/images/serum_visage_transparente.jpg',
  },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produits'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, index) {
            final product = products[index];

            return Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                       products[index]['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      product['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      product['price']!,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add to cart'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
