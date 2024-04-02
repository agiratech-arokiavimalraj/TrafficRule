import 'package:flutter/material.dart';

class FullName extends StatelessWidget {
  const FullName({super.key});
  @override
  Widget build(context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        labelText: 'Full Name',
      ),
    );
  }
}
