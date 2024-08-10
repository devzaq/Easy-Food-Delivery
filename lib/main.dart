import 'package:cmp_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CMP Assignment',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 1;
  List<IconData> listOfIcons = [
    Icons.person_2_rounded,
    Icons.favorite_rounded,
    Icons.dining_rounded,
  ];
  List<String> listOfIconsNames = ["Profile", "", "Orders"];
  List screens = const [
    Scaffold(
      body: SafeArea(child: Text("Page 2")),
    ),
    HomeScreen(),
    Scaffold(
      body: SafeArea(child: Text("Page 3")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        screens[currentIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20, right: 60, left: 60),
            height: size.width * .18,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: size.width * .045),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index == 1
                          ? Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.center,
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                        "assets/icons/logo.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 1500),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  margin: EdgeInsets.only(
                                    bottom: index == currentIndex
                                        ? size.width * .020
                                        : size.width * .029,
                                    right: size.width * .045,
                                    left: size.width * .045,
                                  ),
                                  width: size.width * .128,
                                  height: index == currentIndex
                                      ? size.width * .014
                                      : 0,
                                ),
                                Icon(
                                  listOfIcons[index],
                                  size: size.width * .076,
                                  color: index == currentIndex
                                      ? Colors.deepPurple
                                      : Colors.black38,
                                ),
                                Text(
                                  listOfIconsNames[index],
                                  style: TextStyle(
                                    color: index == currentIndex
                                        ? Colors.deepPurple
                                        : Colors.black38,
                                    fontWeight: index == currentIndex
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: size.width * .015),
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
