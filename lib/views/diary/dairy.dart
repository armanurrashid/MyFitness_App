import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;
import 'package:my_fitness/views/diary/breakfastCard.dart';
import 'package:my_fitness/views/diary/dinnerCard.dart';
import 'package:my_fitness/views/diary/lunchCard.dart';
import 'package:my_fitness/views/diary/remainingCalories.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.blackBackground,
      appBar: AppBar(
        backgroundColor: app_colors.blackBackground,
        foregroundColor: app_colors.appTitle,
        title: const Text(
          "Diary",
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
                  Text("Today", style: TextStyle(color: app_colors.white, fontSize: 20)),
                  Icon(Icons.chevron_right, color: app_colors.subHeading),
                ],
              ),
            ),
            SizedBox(height: 20,),
            RemainingCalories(),
            SizedBox(height: 20,),
            BreakfastCard(),
            SizedBox(height: 20,),
            LunchCard(),
            SizedBox(height: 20,),
            DinnerCard(),
          ],
        ),
      ),
    );
  }
}
