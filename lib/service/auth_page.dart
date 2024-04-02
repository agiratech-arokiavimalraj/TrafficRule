// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:our_rights_fe/components/dashboard/dashboard_page.dart';
// import 'package:our_rights_fe/components/login/login_page.dart';

// class AuthPage extends StatelessWidget {
//   const AuthPage({super.key});

//   @override
//   Widget build(context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return const DashboardPage();
//           } else {
//             return LogInPage();
//           }
//         },
//       ),
//     );
//   }
// }
