import 'package:flutter/material.dart';

class OtherLoginButton extends StatelessWidget {
  const OtherLoginButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // color: Colors.white,
          width: 160,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/google_logo.png",
                width: 35,
              ),
              const Text("Google"),
            ],
          ),
        ),
        Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/facebook_logo.png",
                width: 35,
              ),
              const Text("Facebook"),
            ],
          ),
        ),
      ],
    );
  }
}
