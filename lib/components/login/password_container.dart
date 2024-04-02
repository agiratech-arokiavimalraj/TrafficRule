import 'package:flutter/material.dart';

class PasswordContainer extends StatelessWidget {
  final passControl;
  const PasswordContainer({super.key, required this.passControl});

  @override
  Widget build(context) {
    return TextField(
      controller: passControl,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Password',
        border: InputBorder.none,
        suffixIcon: Icon(Icons.visibility_off_outlined),
      ),
      obscureText: true,
    );
  }
}
