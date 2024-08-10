import 'package:flutter/material.dart';

class PlatterHeading extends StatelessWidget {
  const PlatterHeading({super.key});

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
                  "Delivery Box",
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
                  "Min 10 - Max 50 )",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
            SizedBox(width: 5),
            Row(
              children: [
                TextButton(
                  onPressed: null,
                  child: Text(
                    "More",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          "Best for small gatherings and house-parties.",
          style: TextStyle(fontSize: 14, color: Colors.black45),
        ),
      ],
    );
  }
}
