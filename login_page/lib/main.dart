import 'package:flutter/material.dart';
import 'package:login_page/Auth.dart';
import 'package:login_page/Screens/homeScreen.dart';
import 'Screens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const homeScreen(),
    );
  }
}
