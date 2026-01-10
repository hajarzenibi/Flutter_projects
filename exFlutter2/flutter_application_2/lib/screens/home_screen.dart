import 'package:flutter/material.dart';
import 'products_page.dart';
import 'orders_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    ProductsPage(),
    OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
  currentIndex: selectedIndex,
  selectedItemColor: Colors.orange,
  unselectedItemColor: Colors.grey,
  showUnselectedLabels: true,
  onTap: (index) {
    setState(() {
      selectedIndex = index;
    });
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.storefront),
      label: 'Produits',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_checkout),
      label: 'Commandes',
    ),
  ],
),

    );
  }
}
