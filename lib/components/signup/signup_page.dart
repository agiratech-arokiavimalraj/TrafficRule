import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/login/login_divider.dart';
import 'package:our_rights_fe/components/login/other_login_button.dart';
import 'package:our_rights_fe/components/signup/already_account.dart';
import 'package:our_rights_fe/components/signup/email_signup.dart';
import 'package:our_rights_fe/components/signup/full_name.dart';
import 'package:our_rights_fe/components/signup/password_signup.dart';
import 'package:our_rights_fe/components/signup/signup_button.dart';
import 'package:our_rights_fe/service/logo.dart';

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
        body: const Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Logo(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                FullName(),
                SizedBox(
                  height: 10,
                ),
                EmailSignUp(),
                SizedBox(
                  height: 10,
                ),
                PasswordSignUp(),
                SizedBox(
                  height: 25,
                ),
                SignUpButton(),
                SizedBox(
                  height: 20,
                ),
                LoginDivider(),
                SizedBox(
                  height: 20,
                ),
                OtherLoginButton(),
                SizedBox(
                  height: 20,
                ),
                AlreadyAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
