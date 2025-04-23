import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class BMICard extends StatelessWidget {
  const BMICard({super.key});

  @override
  Widget build(BuildContext context) {
    double bmi = 28.35;

    double bmiMarkerPosition() {
      double bmiPos = 0.0;
      if (bmi >= 0 && bmi <= 18.5) {
        bmiPos = bmi * 3.24 - 15;
      } else if (bmi > 18.5 && bmi <= 24.5) {
        bmiPos = 15 + ((bmi-18.5) * 11.6);
      }else if (bmi > 24.5 && bmi <= 29.5) {
        bmiPos = 85 + ((bmi-24.5) * 14);
      }else if (bmi > 29.5 && bmi <= 34.5) {
        bmiPos = 155 + ((bmi-29.5) * 13);
      }else if (bmi > 34.5 && bmi <= 40) {
        bmiPos = 220 + ((bmi-34.5) * 12.72);
      }

      return bmiPos;
    }

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
      "Healthy weight",
      "Overweight",
      "Obese",
      "Extremely Obese",
    ];

    int segmentIndex = getSegmentIndex(bmi);

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
          /// BMI Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BMI (kg/m²): $bmi",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.edit,color: Colors.white,size: 20,)
            ],
          ),

          const SizedBox(height: 10),

          /// Marker Label above bar
          LayoutBuilder(
            builder: (context, constraints) {
              double bmiPosition = bmiMarkerPosition();

              return Stack(
                children: [
                  Container(height: 40), // Reserve space for marker
                  Positioned(
                    left: bmiPosition,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: colors[segmentIndex],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            labels[segmentIndex],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: colors[segmentIndex],
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
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

          /// BMI Ranges
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("0", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("18.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("24.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("29.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("34.5", style: TextStyle(color: Colors.white, fontSize: 10)),
              Text("40", style: TextStyle(color: Colors.white, fontSize: 10)),
            ],
          ),
        ],
      ),
    );
  }
}
