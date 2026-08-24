import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();
  bool _sent = false;

  Future<void> _resetPassword() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
    setState(() => _sent = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Account Email')),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: _resetPassword, child: const Text('Send Reset Link')),
            if (_sent) const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Password reset email sent! Check your inbox.', style: TextStyle(color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}
