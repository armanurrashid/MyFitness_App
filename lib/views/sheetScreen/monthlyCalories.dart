import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;

class MonthlyCalories extends StatefulWidget {
  const MonthlyCalories({super.key});

  @override
  State<MonthlyCalories> createState() => _MonthlyCaloriesState();
}

class _MonthlyCaloriesState extends State<MonthlyCalories> {
  List<DateTime> dates = [];
  Map<int, TextEditingController> caloriesControllers = {};
  Map<int, TextEditingController> stepsControllers = {};

  @override
  void initState() {
    super.initState();
    generateDatesForJanuary();
  }

  void generateDatesForJanuary() {
    for (int day = 1; day <= 31; day++) {
      dates.add(DateTime(2025, 1, day));
      caloriesControllers[day] = TextEditingController();
      stepsControllers[day] = TextEditingController();
    }
  }

  @override
  void dispose() {
    caloriesControllers.values.forEach((controller) => controller.dispose());
    stepsControllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: app_colors.diaryBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: app_colors.cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Day',
                        style: TextStyle(
                          color: app_colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Calories',
                        style: TextStyle(
                          color: app_colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Steps',
                        style: TextStyle(
                          color: app_colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.separated(
                itemCount: dates.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final date = dates[index];
                  return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: app_colors.addColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: app_colors.addColor.withOpacity(0.3)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              date.day.toString().padLeft(2, '0'),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: app_colors.addColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: TextField(
                              controller: caloriesControllers[date.day],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[400]),
                              decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: TextField(
                              controller: stepsControllers[date.day],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[400]),
                              decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                fillColor: app_colors.white,
                                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
