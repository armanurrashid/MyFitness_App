import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;
import 'package:my_fitness/views/sheetScreen/monthlyCalories.dart';

class Sheet extends StatelessWidget {
  const Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.blackBackground,
      appBar: AppBar(
        backgroundColor: app_colors.blackBackground,
        foregroundColor: app_colors.appTitle,
        title: const Text(
          "Monthly Sheet",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.chevron_left, color: app_colors.subHeading),
                  Text("January", style: TextStyle(color: app_colors.white, fontSize: 20)),
                  Icon(Icons.chevron_right, color: app_colors.subHeading),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Average Calories", style: TextStyle(color: app_colors.subHeading, fontSize: 14), ),
                      Text("2000",style: TextStyle(color: app_colors.white, fontSize: 16),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cheat Day", style: TextStyle(color: app_colors.subHeading, fontSize: 14), ),
                      Text("5",style: TextStyle(color: app_colors.white, fontSize: 16),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Exercise Average", style: TextStyle(color: app_colors.subHeading, fontSize: 14), ),
                      Text("10000",style: TextStyle(color: app_colors.white, fontSize: 16),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            MonthlyCalories(),
          ],
        ),
      ),
    );
  }
}
