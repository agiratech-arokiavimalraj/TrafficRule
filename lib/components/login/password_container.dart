import 'package:flutter/material.dart';

class PasswordContainer extends StatefulWidget {
  const PasswordContainer({super.key, required this.passControl});

  final passControl;
  @override
  State<PasswordContainer> createState() {
    return _PasswordContainer();
  }
}

class _PasswordContainer extends State<PasswordContainer> {
  bool visible = true;
  Widget iconVisible = const Icon(Icons.visibility_off_outlined);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passControl,
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
