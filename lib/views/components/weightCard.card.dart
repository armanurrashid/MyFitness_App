import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  Widget _buildInfoRow(IconData icon, Color iconColor, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: 5),
          Text(
            "$label:",
            style: TextStyle(color: app_colors.iconColor, fontSize: 15),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(width: 5),
          Text(
            value,
            style: TextStyle(color: app_colors.iconColor, fontSize: 15),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 150,
      decoration: BoxDecoration(
        color: app_colors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Weight",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(Icons.add, color: Colors.white),
              ],
            ),
            const SizedBox(height: 15),
            _buildInfoRow(Icons.local_fire_department, Colors.orange, "Current", "1200"),
            SizedBox(height: 10,),
            _buildInfoRow(Icons.flag, Colors.orange, "Goal", "1200"),
          ],
        ),
      ),
    );
  }
}
