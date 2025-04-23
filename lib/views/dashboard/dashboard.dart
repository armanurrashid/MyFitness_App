import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;
import 'package:my_fitness/views/dashboard/bmiCard.dart';
import 'package:my_fitness/views/dashboard/caloriesCard.dart';
import 'package:my_fitness/views/dashboard/stepCard.dart';
import 'package:my_fitness/views/diary/dairy.dart';
import '../dashboard/graphSection.dart';
import '../dashboard/monthlySummaryTable.dart';
import '../dashboard/weightCard.card.dart';
import '../dashboard/weightPoints.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      fontStyle: FontStyle.italic,
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    CaloriesCard(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StepCard(),
                        WeightCard(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        MonthlySummaryTable(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BMICard(),
                    SizedBox(height: 20,),
                    GraphSection(weightPoints),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: app_colors.blackBackground,
        selectedItemColor: Colors.white, // Icon color when selected
        unselectedItemColor: Colors.grey, // Icon color when not selected
        selectedLabelStyle: TextStyle(color: Colors.white), // Label color when selected
        unselectedLabelStyle: TextStyle(color: Colors.white),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.book_rounded), label: "Diary"),
            BottomNavigationBarItem(icon: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white,)),label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Sheet"),
            BottomNavigationBarItem(icon: Icon(Icons.bloodtype), label: "Period"),
          ],
      onTap: (int index){
          if(index==1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DiaryScreen()));
          }
      },),
    );
  }
}
