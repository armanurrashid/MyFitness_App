import 'package:flutter/material.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;


class AddFood extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {"name": "East baker bread milk", "cal": "165 cal, east baker, 1.0 cup"},
    {"name": "Milk tea with one spoon milk and sugar", "cal": "100 cal, Cha, 0.5 cup"},
    {"name": "Tea with milk and sugar", "cal": "120 cal, Milk tea, 1.0 cup"},
  ];

  AddFood({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: app_colors.blackBackground,
        appBar: AppBar(
          backgroundColor: app_colors.blackBackground,
          foregroundColor: app_colors.appTitle,
          title: DropdownButton<String>(
            value: "Breakfast",
            dropdownColor: app_colors.diaryBackground,
            underline: SizedBox(),
            items: ['Breakfast', 'Lunch', 'Dinner']
                .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e, style: TextStyle(color: Colors.blue)),
            ))
                .toList(),
            onChanged: (val) {},
          ),
        ),
        body: buildMyFoodsTab(),
      ),
    );
  }

  Widget buildMyFoodsTab() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCard(Icons.local_pizza, "Create a Food"),
              buildCard(Icons.local_fire_department, "Quick Add"),
            ],
          ),
          SizedBox(height: 20),
          Text("My Food"),
          Expanded(
            child: ListView.builder(
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                final item = foodItems[index];
                return Card(
                  color: app_colors.diaryBackground,
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text(item["name"]!, style: TextStyle(color: Colors.white)),
                    subtitle: Text(item["cal"]!, style: TextStyle(color: Colors.grey)),
                    trailing: Icon(Icons.add_circle_outline, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(IconData icon, String label) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: app_colors.diaryBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.red, size: 32),
            SizedBox(height: 8),
            Text(label, style: TextStyle(color: Colors.redAccent)),
          ],
        ),
      ),
    );
  }
}
