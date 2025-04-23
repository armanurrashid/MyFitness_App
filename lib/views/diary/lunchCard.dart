import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class LunchCard extends StatelessWidget {
  const LunchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: app_colors.diaryBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Lunch", style: TextStyle(color: app_colors.white, fontSize: 20,),),
          ),
          const SizedBox(height: 15),
          Container(
            height: 1,
            width: double.infinity,
            color: app_colors.subHeading.withOpacity(0.5),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text("+ ADD PIC", style: TextStyle(color: app_colors.addColor, fontSize: 17),),
                onPressed: () {},
              ),
              TextButton(
                child: Text("+ ADD FOOD", style: TextStyle(color: app_colors.addColor,fontSize: 17),),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
