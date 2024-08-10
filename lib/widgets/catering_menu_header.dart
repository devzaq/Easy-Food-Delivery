import 'package:flutter/material.dart';

class CateringMenuHeader extends StatelessWidget {
  const CateringMenuHeader({super.key});

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
                  "Catering Menus",
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
                  "Min 200 )",
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
          "Best for weddings, Corporate Events, Birthdays etc.",
          style: TextStyle(fontSize: 14, color: Colors.black45),
        ),
      ],
    );
  }
}
