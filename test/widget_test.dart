// File: lib/widgets/department_card.dart
import 'package:flutter/material.dart';

class DepartmentCard extends StatelessWidget {
  final String title;
  final Map<String, bool> items;
  final Function(String, bool?) onStatusChanged;

  const DepartmentCard({
    super.key,
    required this.title,
    required this.items,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${(items.values.where((v) => v).length / items.length * 100).toStringAsFixed(0)}%',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const Divider(),
            ...items.entries.map((item) => CheckboxListTile(
                  title: Text(item.key),
                  value: item.value,
                  onChanged: (value) => onStatusChanged(item.key, value),
                  activeColor: Colors.blue,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                )),
          ],
        ),
      ),
    );
  }
}
