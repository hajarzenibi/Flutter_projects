import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'clients_page.dart';
import 'commandes_page.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    ClientsPage(),
    CommandesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void changePage(int index) {
    Navigator.pop(context);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini CRM"),
      ),

      drawer: AppDrawer(onSelectPage: changePage),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Clients"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Commandes"
          ),
        ],
      ),
    );
  }
}
