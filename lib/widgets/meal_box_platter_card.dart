import 'package:flutter/material.dart';

class MealBoxPlatterCard extends StatelessWidget {
  const MealBoxPlatterCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.amber,
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffFCC1DD),
                    Color(0xffF560A7),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Image.asset(
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                  "assets/images/food-3.png",
                ),
              ),
            ),
            Positioned(
                bottom: 25,
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 25,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff7915DE),
                          Color(0xff260C40),
                        ],
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: const Text(
                    "3 Items Box",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                )),
          ],
        ),
        const SizedBox(width: 10),
        Stack(
          children: [
            Container(
              height: 150,
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: Colors.amber,
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffD4C1FC),
                    Color(0xff957EC7),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Image.asset(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomRight,
                  "assets/images/food-3.png",
                ),
              ),
            ),
            Positioned(
                bottom: 25,
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 25,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff7915DE),
                          Color(0xff260C40),
                        ],
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: const Text(
                    "5 Items Box",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
