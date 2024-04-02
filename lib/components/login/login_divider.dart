import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});
  @override
  Widget build(context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: 120,
            child: Divider(
              color: Colors.grey,
            )),
        Text(
          'Or Login with',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
            width: 120,
            child: Divider(
              color: Colors.grey,
            )),
      ],
    );
  }
}
