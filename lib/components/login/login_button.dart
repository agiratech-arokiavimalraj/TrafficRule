import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/otp/otp_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });
  @override
  Widget build(context) {
    return InkWell(
      // onTap: signInVerification(),
      onTap: () {
        debugPrint(" printing.............. Vimal");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OTPPage(),
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
          'Login',
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
