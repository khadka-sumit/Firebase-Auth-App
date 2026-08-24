import 'package:flutter/material.dart';

import 'auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService =
        AuthService();

    final String email =
        authService.currentUser?.email ??
            'No email';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await authService.logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                size: 100,
                color: Colors.green,
              ),

              const SizedBox(height: 20),

              const Text(
                'Login Successful!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Logged in as:',
              ),

              const SizedBox(height: 5),

              Text(
                email,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: () async {
                  await authService.logout();
                },
                icon:
                    const Icon(Icons.logout),
                label:
                    const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}