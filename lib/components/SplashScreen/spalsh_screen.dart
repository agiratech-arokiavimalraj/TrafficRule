import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:our_rights_fe/components/SplashScreen/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  final mailControler = TextEditingController();
  final passControler = TextEditingController();
  var currentTab = 1;
  var tabLength = 3;
  void swipeTab() {
    setState(() {
      if (currentTab <= 3) {
        currentTab += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 238, 238, 238),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 238, 238, 238),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 40,
                          color: const Color.fromARGB(255, 0, 136, 248),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Our Rights",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 117, 227),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 30),
                // const TabBar(
                //   tabs: [
                //     Tab(text: 'Tab 1'),
                //     Tab(text: 'Tab 2'),
                //   ],
                // ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/image1.jpg",
                              width: 300,
                              height: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "We Support and Safeguard you through Buying or Selling Property",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Let us be Judicial guide",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/image2.jpg",
                              width: 300,
                              height: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "We are there for the access the Law in Your Hand",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Let us be Judicial guide",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/image3.jpg",
                              width: 300,
                              height: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "We 're Well-Versed in the complexities of Immigration Law",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Let us be Judicial guide",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(28.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    activeColor: const Color.fromARGB(228, 0, 7, 109),
                  ),
                ),

                const SizedBox(height: 20),
                const GetStarted(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
