import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/login/do_you_have.dart';
import 'package:our_rights_fe/components/login/email_container.dart';
import 'package:our_rights_fe/components/login/forget_password.dart';
import 'package:our_rights_fe/components/login/login_button.dart';
import 'package:our_rights_fe/components/login/login_divider.dart';
import 'package:our_rights_fe/components/login/other_login_button.dart';
import 'package:our_rights_fe/components/login/password_container.dart';
import 'package:our_rights_fe/service/logo.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  final mailControler = TextEditingController();
  final passControler = TextEditingController();

  // void signInVerification() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: mailControler.text,
  //     password: passControler.text,
  //   );
  // }

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
                const Logo(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Login to Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                EmailContainer(
                  mailControl: mailControler,
                ),
                const SizedBox(
                  height: 10,
                ),
                PasswordContainer(
                  passControl: passControler,
                ),
                const SizedBox(
                  height: 25,
                ),
                const ForgetPassword(),
                const SizedBox(
                  height: 25,
                ),
                const LoginButton(),
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
                const DoYouHave(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
