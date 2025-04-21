import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class MonthlySummaryTable extends StatelessWidget {
  const MonthlySummaryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width - 40,
      height: 210,
      decoration: BoxDecoration(
        color: app_colors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'This Month: ',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
                const Text(
                  '1900',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Table(
              border: TableBorder.all(color: app_colors.cardColor),
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                // Heading Row
                TableRow(
                  decoration: BoxDecoration(color: app_colors.cardColor),
                  children: const [
                    SizedBox(), // Empty top-left cell
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Average',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Cheat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                // Average Row
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '1st Half',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '2000',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                // Cheat Row
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '2nd Half',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '1800',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '3',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                // Total Row (spans across columns)
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '3800',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
