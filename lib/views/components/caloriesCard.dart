import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

import 'InfoRow.dart';

class CaloriesCard extends StatelessWidget {
  const CaloriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: screenWidth,
            height: 265,
            decoration: BoxDecoration(
              color: app_colors.cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text(
                      "Calories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.add,color: Colors.white,),
                  ]),
                  Text(
                    "Remaining = Goal - Food + Steps",
                    style: TextStyle(
                      color: app_colors.subHeading,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: CircularProgressIndicator(
                                  value:
                                      0.7, // Progress as a fraction of the total (70%)
                                  backgroundColor: Colors.grey,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green),
                                  strokeWidth: 8,
                                ),
                              ),
                              Text(
                                "2540\nRemaining",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoRow(
                              icon: Icons.flag,
                              iconColor: app_colors.iconColor,
                              title: "Goals",
                              value: "1000"),
                          SizedBox(
                            height: 10,
                          ),
                          InfoRow(
                              icon: Icons.flatware,
                              iconColor: Colors.blue,
                              title: "Remaining",
                              value: "1200"),
                          SizedBox(
                            height: 10,
                          ),
                          InfoRow(
                              icon: Icons.directions_walk,
                              iconColor: Colors.amber,
                              title: "Steps",
                              value: "10000"),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
