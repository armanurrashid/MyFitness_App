import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;
import 'package:my_fitness/views/dashboard/weightPoints.dart';

class GraphSection extends StatelessWidget {
  final List<WeightPoint> points;

  const GraphSection(this.points, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: screenWidth,
            height: 308,
            decoration: BoxDecoration(
              color: app_colors.cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Weight", style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("Current",style: TextStyle(color: app_colors.subHeading),),
                          Text("73.5 kg",style: TextStyle(color: Colors.white,fontSize: 17,),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Last 30 days",style: TextStyle(color: app_colors.subHeading)),
                          SizedBox(height: 3,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "+0 kg",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  AspectRatio(
                      aspectRatio: 2,
                      child:
                      LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
                              isCurved: false,
                              dotData: FlDotData(show: true),
                              color: Colors.cyanAccent,
                            ),
                          ],
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                interval: 1,
                                getTitlesWidget: (value, meta) {
                                  const months = ["Jan", "Feb", "Mar", "Apr"];
                                  return Text(
                                    value.toInt() >= 0 && value.toInt() < months.length
                                        ? months[value.toInt()]
                                        : '',
                                    style: const TextStyle(color: Colors.white, fontSize: 12),
                                  );
                                },
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                interval: 5, // Label every 5 units (50, 55, 60, ..., 80)
                                getTitlesWidget: (value, meta) {
                                  return Text(
                                    value.toInt().toString(),
                                    style: const TextStyle(color: Colors.white, fontSize: 12),
                                  );
                                },
                              ),
                            ),
                            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          ),
                          // gridData: FlGridData(show: true),
                          gridData: FlGridData(
                            show: true,
                            drawVerticalLine: false,
                            drawHorizontalLine: true,
                            getDrawingHorizontalLine: (value) {
                              return FlLine(
                                color: Colors.white.withOpacity(0.2), // ← your horizontal line color
                                strokeWidth: 1,
                              );
                            },
                            // getDrawingVerticalLine: (value) {
                            //   return FlLine(
                            //     color: Colors.white.withOpacity(0.2), // ← your vertical line color
                            //     strokeWidth: 1,
                            //   );
                            // },
                          ),

                          borderData: FlBorderData(show: true),
                          minX: 0,
                          maxX: 3,
                          minY: 70,
                          maxY: 85,
                        ),
                      )


                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
