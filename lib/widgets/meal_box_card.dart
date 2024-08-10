import 'package:flutter/material.dart';

class MealBoxCard extends StatelessWidget {
  const MealBoxCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 200,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            color: Colors.amber,
            gradient: const LinearGradient(
              colors: [
                Color(0xff957EC7),
                Color(0xffD4C1FC),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meal Boxes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  letterSpacing: 0,
                                  height: 0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 18,
                                  color: Color.fromARGB(182, 99, 24, 175),
                                ),
                                Text(
                                  " Min 10 Guests",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(182, 99, 24, 175),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple,
                              radius: 16,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                onPressed: null,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, right: 0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(-0.65, -0.65),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/food-2.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xffF560A7),
                Color(0xffFCC1DD),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Catering",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  letterSpacing: 0,
                                  height: 0,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 18,
                                  color: Colors.pink,
                                ),
                                Text(
                                  "Min 120 Guests",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 16,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                onPressed: null,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, right: 0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(-0.35, -0.35),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/food-5.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
