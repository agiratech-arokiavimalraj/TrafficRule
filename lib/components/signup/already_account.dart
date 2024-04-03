import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/login/login_page.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({super.key});
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account? ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LogInPage(),
              ),
            );
          },
          child: RichText(
            text: const TextSpan(
              text: 'Login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
