import 'package:flutter/material.dart';

class DeliveryBoxCard extends StatelessWidget {
  const DeliveryBoxCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.amber,
        gradient: const LinearGradient(
          colors: [
            // Color.fromARGB(0, 121, 21, 222),
            Color(0xffFDFAEC),
            Colors.amber,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Boxes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      letterSpacing: 0,
                      height: 0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xff935A10),
                    ),
                    Text(
                      " Min 10-Max 120",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xaf935A10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                FilledButton(
                  onPressed: null,
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffDD8E18))),
                  child: Row(
                    children: [
                      Text("See All"),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(-2, -3),
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/food_8.png",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
