import 'package:flutter/material.dart';

class EmailContainer extends StatelessWidget {
  final mailControl;
  const EmailContainer({super.key, required this.mailControl});

  @override
  Widget build(context) {
    return TextField(
      controller: mailControl,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        labelText: 'Email Address',
      ),
    );
  }
}
