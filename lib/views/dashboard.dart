import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
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
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: screenWidth,
                  height: 260,
                  decoration: BoxDecoration(
                    color: app_colors.cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Calories",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
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
                                  Stack(
                                      alignment: Alignment.center,
                                      children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: CircularProgressIndicator(
                                        value: 0.7, // Progress as a fraction of the total (70%)
                                        backgroundColor: Colors.grey,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
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
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Optional: aligns rows left
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.flag,
                                        color: app_colors.iconColor),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Goals",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                        Text("1000",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10), // spacing between rows

                                Row(
                                  children: [
                                    Icon(Icons.flatware,
                                        color: Colors.blue),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Remaining",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                        Text("1000",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Icon(Icons.directions_walk,
                                        color: Colors.amber),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Steps",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                        Text("1000",
                                            style: TextStyle(
                                                color: app_colors.iconColor,
                                                fontSize: 15)),
                                      ],
                                    ),
                                  ],
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
          )
        ],
      )),
    );
  }
}
