import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;

  const OTPTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
  });

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 10,
          ),
        ],
      ),
      child: TextField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: controller,
        focusNode: focusNode,
        onChanged: (value) {
          if (value.isNotEmpty && nextFocusNode != null) {
            focusNode.unfocus();
            FocusScope.of(context).requestFocus(nextFocusNode);
          }
        },
        decoration: const InputDecoration(
          counter: SizedBox.shrink(),
          fillColor: Colors.white,
          filled: true,
          hintText: "__",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
                BorderRadius.all(Radius.circular(5)), // Circular border
          ),
        ),
      ),
    );
  }
}
