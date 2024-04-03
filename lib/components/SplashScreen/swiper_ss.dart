import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:our_rights_fe/components/SplashScreen/get_started.dart';

class SwiperSS extends StatefulWidget {
  const SwiperSS({super.key});
  @override
  State<SwiperSS> createState() {
    return _SwiperSS();
  }
}

class _SwiperSS extends State<SwiperSS> with SingleTickerProviderStateMixin {
  final mailControler = TextEditingController();
  final passControler = TextEditingController();
  String swipeDirection = '';

  int currentTab = 0;
  late TabController _tabController;

  List<Map<String, String>> dataList = [
    {
      'image': 'assets/images/image1.jpg',
      'title':
          'We Support and Safeguard you through Buying or Selling Property',
      'subtitle': 'Let us be Judicial guide',
    },
    {
      'image': 'assets/images/image2.jpg',
      'title': 'We are there for the access the Law in Your Hand',
      'subtitle': 'Let us be Judicial guide',
    },
    {
      'image': 'assets/images/image3.jpg',
      'title': "We 're Well-Versed in the complexities of Immigration Law",
      'subtitle': 'Let us be Judicial guide',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: dataList.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      currentTab = _tabController.index;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  for (var data in dataList)
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              data['image']!,
                              fit: BoxFit.cover,
                              width: 300,
                              height: 300,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            data['title']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            data['subtitle']!,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: dataList.length,
              position: currentTab,
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
    );
  }
}
