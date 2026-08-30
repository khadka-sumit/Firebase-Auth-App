import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const FirebaseAuthApp());
}

class FirebaseAuthApp extends StatelessWidget {
  const FirebaseAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Auth App',
      home: LoginScreen(),
    );
  }
}