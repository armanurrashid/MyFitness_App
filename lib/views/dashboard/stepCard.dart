import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class StepCard extends StatelessWidget{
int step = 2000;
int goal = 10000;
  @override
  Widget build(BuildContext context) {
    double progress = step / goal;
   return Column(
     children: [
       Container(
           width: 170,
           height: 150,
           decoration: BoxDecoration(
             color: app_colors.cardColor,
             borderRadius: BorderRadius.circular(20),
           ),
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
             child: Column(
               children: [
                 Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Steps",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                         ),
                       ),
                       Icon(Icons.add,color: Colors.white,),
                     ]),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15.0),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Icon(Icons.directions_run, color: Colors.red,),
                           SizedBox(width: 5,),
                           Text("$step", style: TextStyle(color: app_colors.iconColor, fontSize: 17),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Text("Goal: $goal steps",style: TextStyle(color: app_colors.subHeading, fontSize: 15),),
                       SizedBox(height: 9,),
                       ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child: LinearProgressIndicator(
                           value: progress, // between 0.0 and 1.0
                           minHeight: 10,
                           backgroundColor: Colors.grey.shade300,
                           valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           )
       )
     ],
   );
  }
}