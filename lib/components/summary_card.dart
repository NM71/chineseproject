import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  SummaryCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            SizedBox(height: 10),
            Text(
              value,
            ),
            SizedBox(height: 5),
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }
}
