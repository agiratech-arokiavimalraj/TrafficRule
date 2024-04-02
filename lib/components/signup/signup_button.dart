import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/dashboard/dashboard_page.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});
  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DashboardPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(228, 0, 7, 109),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 150),
        child: const Text(
          'Sign up',
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
