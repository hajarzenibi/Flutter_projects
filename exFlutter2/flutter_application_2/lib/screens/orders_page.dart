import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  final List<Map<String, String>> orders = const [
    {
      'id': 'Commande #001',
      'details': '2 produits • 50 000 FCFA',
      'status': 'En cours',
    },
    {
      'id': 'Commande #002',
      'details': '1 produit • 30 000 FCFA',
      'status': 'Livrée',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Commandes'),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag),
                    title: Text(order['id']!),
                    subtitle: Text(order['details']!),
                    trailing: Text(
                      order['status']!,
                      style: TextStyle(
                        color: order['status'] == 'Livrée'
                            ? Colors.green
                            : Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Passer la commande'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
