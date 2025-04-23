import 'package:flutter/cupertino.dart';
import 'package:my_fitness/colorList/colorList.dart' as app_colors;


class InfoRow extends StatelessWidget{

  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;


  InfoRow({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: app_colors.iconColor, fontSize: 15),),
            Text(value, style: TextStyle(color: app_colors.iconColor, fontSize: 15),)
          ],
        )
      ],
    );
  }

}