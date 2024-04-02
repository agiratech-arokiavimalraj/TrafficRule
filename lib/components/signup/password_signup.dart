import 'package:flutter/material.dart';

class PasswordSignUp extends StatelessWidget {
  const PasswordSignUp({super.key});
  @override
  Widget build(context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        labelText: 'Password',
      ),
    );
  }
}
