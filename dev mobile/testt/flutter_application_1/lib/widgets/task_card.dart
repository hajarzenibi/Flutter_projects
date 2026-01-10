import 'package:flutter/material.dart';

class TaskItem {
  final String text;
  final Color color;
  const TaskItem(this.text, this.color);
}

class TaskCard extends StatelessWidget {
  final String title;
  final List<TaskItem> tasks;

  const TaskCard({super.key, required this.title, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2B6CB0),
            ),
          ),
          const SizedBox(height: 12),
          ...tasks.map(
            (t) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        ((t.color.r * 255.0).round()).clamp(0, 255),
                        ((t.color.g * 255.0).round()).clamp(0, 255),
                        ((t.color.b * 255.0).round()).clamp(0, 255),
                        0.12,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      t.color == Colors.green
                          ? Icons.check_circle
                          : (t.color == Colors.orange
                                ? Icons.pending
                                : Icons.radio_button_unchecked),
                      color: t.color,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      t.text,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF263238),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
