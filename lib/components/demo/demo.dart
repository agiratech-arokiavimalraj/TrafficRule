import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/demo/back_to_dashboard.dart';
import 'package:our_rights_fe/components/demo/back_to_login.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});
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
                "Demo page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const BackToLogin(),
              const BackToDashboard(),
            ],
          ),
        ),
      ),
    );
  }
}
