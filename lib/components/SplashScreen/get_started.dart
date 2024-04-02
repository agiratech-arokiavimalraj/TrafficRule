import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/login/login_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogInPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(228, 0, 7, 109),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 120),
        child: const Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
