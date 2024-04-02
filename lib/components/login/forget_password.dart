import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(context) {
    return Align(
      alignment: Alignment.centerRight,
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Forget Password?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(228, 0, 7, 109),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
