import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final double percent; // 0.0 - 1.0
  const ProgressCard({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    final display = (percent * 100).toInt();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.06),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Progress',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2B6CB0),
                ),
              ),
              SizedBox(height: 6),
              Text(
                'You\'re almost there!',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            width: 48,
            height: 48,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 44,
                  height: 44,
                  child: CircularProgressIndicator(
                    value: percent,
                    strokeWidth: 4.5,
                    color: const Color(0xFF4FA3FF),
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                Text('$display%'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
