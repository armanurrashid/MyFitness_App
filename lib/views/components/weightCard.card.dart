import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class WeightCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 180,
            height: 120,
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
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: [
                        Icon(Icons.access_alarm, color: Colors.blue,),
                        SizedBox(width: 5,),
                        Text("Current:", style: TextStyle(color: app_colors.iconColor, fontSize: 17),overflow: TextOverflow.ellipsis,),
                        SizedBox(width: 5,),
                        Text("1200", style: TextStyle(color: app_colors.iconColor, fontSize: 17),overflow: TextOverflow.ellipsis,)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.flag, color: Colors.blue,),
                      SizedBox(width: 5,),
                      Text("Goal:", style: TextStyle(color: app_colors.iconColor, fontSize: 17),),
                      SizedBox(width: 5,),
                      Text("1200", style: TextStyle(color: app_colors.iconColor, fontSize: 17),)
                    ],
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}