import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Container(
        constraints: const BoxConstraints(minWidth: 300, maxWidth: 500),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(children: [
          //const SizedBox(height: 100),
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              labelText: 'Email',
              border: const OutlineInputBorder(),
              fillColor: Theme.of(context).colorScheme.background,
              filled: true,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              labelText: 'Password',
              border: const OutlineInputBorder(),
              fillColor: Theme.of(context).colorScheme.background,
              filled: true,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => {},
            child: const Text('Sign In/Sign Up'),
          ),
        ]),
      ),
    );
  }
}
