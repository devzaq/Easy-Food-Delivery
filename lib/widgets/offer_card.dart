import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 160,
          width: size.width * .85,
          decoration: BoxDecoration(
            color: Colors.amber,
            gradient: const LinearGradient(
              colors: [
                // Color.fromARGB(0, 121, 21, 222),
                Color(0xff7915de),
                Color(0xff260c40),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Enjoy your first\norder, the taste of\nour delicious food!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 0,
                          height: 0,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      dashPattern: const [5],
                      color: Colors.grey,
                      radius: const Radius.circular(5),
                      padding: const EdgeInsets.all(6),
                      child: const SizedBox(
                        height: 25,
                        width: 120,
                        child: Center(
                            child: Text(
                          "FIRSTPLATE01",
                          style: TextStyle(
                              fontSize: 15, color: Colors.yellowAccent),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/Layer_2.png",
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
