import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/login/login_divider.dart';
import 'package:our_rights_fe/components/login/other_login_button.dart';
import 'package:our_rights_fe/components/signup/already_account.dart';
import 'package:our_rights_fe/components/signup/email_signup.dart';
import 'package:our_rights_fe/components/signup/full_name.dart';
import 'package:our_rights_fe/components/signup/password_signup.dart';
import 'package:our_rights_fe/components/signup/signup_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const FullName(),
                const SizedBox(
                  height: 10,
                ),
                const EmailSignUp(),
                const SizedBox(
                  height: 10,
                ),
                const PasswordSignUp(),
                const SizedBox(
                  height: 25,
                ),
                const SignUpButton(),
                const SizedBox(
                  height: 20,
                ),
                const LoginDivider(),
                const SizedBox(
                  height: 20,
                ),
                const OtherLoginButton(),
                const SizedBox(
                  height: 20,
                ),
                const AlreadyAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
