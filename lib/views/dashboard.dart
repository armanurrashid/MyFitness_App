import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;
import 'package:my_fitness/views/components/caloriesCard.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: app_colors.blackBackground,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/image/arman.jpg'),
                ),
                Text(
                  "My Fitness",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: app_colors.appTitle),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          CaloriesCard(),
        ],
      )),
    );
  }
}
