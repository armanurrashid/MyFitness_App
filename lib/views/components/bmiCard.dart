import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class BMICard extends StatelessWidget {
  const BMICard({super.key});

  @override
  Widget build(BuildContext context) {
    double bmi = 22.25;

    int getSegmentIndex(double bmi) {
      if (bmi < 18.5) return 0;
      if (bmi < 25) return 1;
      if (bmi < 30) return 2;
      if (bmi < 35) return 3;
      return 4;
    }

    List<Color> colors = [
      Colors.lime,
      Colors.green,
      Colors.amber,
      Colors.orange,
      Colors.red,
    ];

    List<String> labels = [
      "Underweight",
      "Healthy",
      "Overweight",
      "Obese",
      "Extremely Obese",
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: app_colors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row: BMI Value + Icon
          Text(
            "BMI (kg/m²): $bmi",
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          /// Labels Above Segments
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                return Expanded(
                  child: Column(
                    children: [
                      if (index == getSegmentIndex(bmi))
                        Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      else
                        const SizedBox(height: 16),
                    ],
                  ),
                );
              }),
            ),
          ),

          const SizedBox(height: 4),

          /// Segmented Progress Bar
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              );
            }),
          ),

          const SizedBox(height: 6),

          /// Range values below each part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("<18.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("18.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("25", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("30", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("35", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("40<", style: TextStyle(color: Colors.white, fontSize: 10)),
            ],
          ),
        ],
      ),
    );
  }
}
