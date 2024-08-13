// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cmp_assignment/screens/on_click_play_screen.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 5),
              child: Text(
                "Hi, Monica!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  height: 1,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current location",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "Hyderabad",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black38,
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnClickPLay(),
                        )),
                    child: Column(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.deepPurple,
                          size: 30,
                        ),
                        Text(
                          "How it works?",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
