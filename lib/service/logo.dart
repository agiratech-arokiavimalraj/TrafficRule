import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/images/logo.png",
              width: 40,
              color: const Color.fromARGB(255, 0, 136, 248),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Our Rights",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 117, 227),
            ),
          ),
        ),
      ],
    );
  }
}
