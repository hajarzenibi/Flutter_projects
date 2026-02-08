import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  final Function(int) onSelectPage;

  AppDrawer({required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [

          UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: Text("admin@email.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),

          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            onTap: () => onSelectPage(0),
          ),

          ListTile(
            leading: Icon(Icons.people),
            title: Text("Clients"),
            onTap: () => onSelectPage(1),
          ),

          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Commandes"),
            onTap: () => onSelectPage(2),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Paramètres"),
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text("À propos"),
          ),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Déconnexion"),
          ),
        ],
      ),
    );
  }
}
