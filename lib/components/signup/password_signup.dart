import 'package:flutter/material.dart';

class PasswordSignUp extends StatefulWidget {
  const PasswordSignUp({super.key});

  @override
  State<PasswordSignUp> createState() {
    return _PasswordSignUp();
  }
}

class _PasswordSignUp extends State<PasswordSignUp> {
  bool visible = true;
  Widget iconVisible = const Icon(Icons.visibility_off_outlined);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: widget.passControl,
      obscureText: visible,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: InputBorder.none,
        labelText: 'Password',
        suffixIcon: IconButton(
          icon: iconVisible,
          onPressed: () {
            setState(
              () {
                visible = !visible;
                if (visible) {
                  iconVisible = const Icon(Icons.visibility_off_outlined);
                } else {
                  iconVisible = const Icon(Icons.visibility_outlined);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
