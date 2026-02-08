import 'package:flutter/material.dart';
import '../widgets/kpi_card.dart';

class DashboardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Tableau de bord",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),

          Text("Bonjour, Admin"),

          SizedBox(height: 20),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              children: [

                KpiCard(
                  icon: Icons.people,
                  label: "Clients",
                  value: "120",
                ),

                KpiCard(
                  icon: Icons.shopping_cart,
                  label: "Commandes",
                  value: "75",
                ),

                KpiCard(
                  icon: Icons.attach_money,
                  label: "Revenu journalier",
                  value: "4500 MAD",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
