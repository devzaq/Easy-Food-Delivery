import 'package:cmp_assignment/widgets/catering_menu_card.dart';
import 'package:cmp_assignment/widgets/catering_menu_header.dart';
import 'package:cmp_assignment/widgets/delivery_box_card.dart';
import 'package:cmp_assignment/widgets/home_appbar.dart';
import 'package:cmp_assignment/widgets/meal_box_card.dart';
import 'package:cmp_assignment/widgets/meal_box_header.dart';
import 'package:cmp_assignment/widgets/meal_box_platter_card.dart';
import 'package:cmp_assignment/widgets/offer_card.dart';
import 'package:cmp_assignment/widgets/platter_card.dart';
import 'package:cmp_assignment/widgets/platter_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppbar(),
                const SizedBox(height: 30),
                SizedBox(
                  height: 160,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Row(
                        children: [
                          OfferCard(),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      );
                    },
                    itemCount: 3,
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    Text(
                      "Start Crafting",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        child: Divider(
                          thickness: 0.05,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const DeliveryBoxCard(),
                const SizedBox(height: 20),
                const MealBoxCard(),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    Text(
                      "Choose Your Platter",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        child: Divider(
                          thickness: 0.05,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const PlatterHeading(),
                const PlatterCard(),
                const SizedBox(height: 25),
                const MealBoxHeader(),
                const SizedBox(height: 25),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Row(
                        children: [
                          MealBoxPlatterCard(),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    },
                    itemCount: 3,
                  ),
                ),
                const SizedBox(height: 25),
                const CateringMenuHeader(),
                const SizedBox(height: 25),
                const CateringMenuCard(),
                const SizedBox(height: 25),
                const SizedBox(height: 50),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/Vector.png"),
                      const Text(
                        "  You Customize, We Cater!  ",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Image.asset("assets/icons/Vector-1.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
