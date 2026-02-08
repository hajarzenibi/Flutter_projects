import 'package:flutter/material.dart';

class KpiCard extends StatelessWidget {

  final IconData icon;
  final String label;
  final String value;

  const KpiCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(icon, size: 30, color: Colors.blue),

            const SizedBox(height: 10),

            Text(label,
                style: const TextStyle(fontWeight: FontWeight.bold)),

            const SizedBox(height: 8),

            Text(value,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                )),
          ],
        ),
      ),
    );
  }
}
