import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:our_rights_fe/components/SplashScreen/spalsh_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const SplashScreen();
  }
}
