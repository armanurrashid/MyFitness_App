import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class RemainingCalories extends StatelessWidget {
  const RemainingCalories({super.key});

  TextStyle get _subHeadingStyle =>
      TextStyle(color: app_colors.subHeading, fontSize: 15);

  Widget buildInfoColumn(String value, String label, {bool isBold = false}) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: isBold ? app_colors.white : app_colors.subHeading,
            fontSize: isBold ? 17 : 15,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(label, style: _subHeadingStyle),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 125,
      decoration: BoxDecoration(
        color: app_colors.diaryBackground,
        // borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
           Text(
            "Calories Remaining",
            style: TextStyle(color: app_colors.white, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildInfoColumn("1340", "Goal"),
                 Icon(Icons.remove, color: app_colors.subHeading),
                buildInfoColumn("0", "Food"),
                 Text("=", style: TextStyle(color: app_colors.subHeading, fontSize: 20)),
                buildInfoColumn("1340", "Remaining", isBold: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
