import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_tutorial/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_tutorial/pages/homepage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key); // Fixed the constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
