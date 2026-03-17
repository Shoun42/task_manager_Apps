
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Lorem Ipsum is simply dummy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "It is a long established fact that a reader will be distracted by the readable content.",
              style: TextStyle(color: Colors.black54),
            ),

            const SizedBox(height: 8),

            const Text(
              "Date: 11/03/2026",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // 🔹 Status Button
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "New",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                // 🔹 Action Icons
                Row(
                  children: const [
                    Icon(Icons.edit, color: Colors.green),
                    SizedBox(width: 12),
                    Icon(Icons.delete, color: Colors.red),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}