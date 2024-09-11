import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Screens/LoginScreen.dart';
import 'package:login_page/Screens/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return homeScreen();
          } else {
            return LoginScreen();
          }
        }),
      ),
    );
  }
}
