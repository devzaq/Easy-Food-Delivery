import 'package:flutter/material.dart';

class MealBoxHeader extends StatelessWidget {
  const MealBoxHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Meal Menus",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "  ( ",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                Icon(
                  Icons.person,
                  size: 18,
                  color: Colors.black45,
                ),
                Text(
                  "Min 10 )",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
            SizedBox(width: 5),
          ],
        ),
        Text(
          "Individually packed meal boxes of happiness!",
          style: TextStyle(fontSize: 14, color: Colors.black45),
        ),
      ],
    );
  }
}
