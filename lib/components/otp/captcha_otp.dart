import 'dart:math';

import 'package:flutter/material.dart';

// class CaptchOTP extends StatelessWidget {
//   const CaptchOTP({super.key});
//   @override
//   Widget build(context) {
//     return Row(
//       children: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.refresh),
//         ),
//       ],
//     );
//   }
// }

class CaptchaOTP extends StatefulWidget {
  const CaptchaOTP({super.key});
  @override
  State<CaptchaOTP> createState() => _CaptchaOTP();
}

class _CaptchaOTP extends State<CaptchaOTP> {
  String captchaText = generateRandomString(6);

  void refreshCAPTCHA() {
    setState(() {
      captchaText = generateRandomString(6);
    });
  }

  static String generateRandomString(int length) {
    const chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          captchaText,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        IconButton(onPressed: refreshCAPTCHA, icon: const Icon(Icons.refresh)),
      ],
    );
  }
}
