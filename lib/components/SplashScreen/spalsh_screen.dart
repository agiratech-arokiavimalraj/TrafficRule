import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/SplashScreen/swiper_ss.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwiperSS(),
    );
  }
}
