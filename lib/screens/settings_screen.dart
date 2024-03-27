import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(minWidth: 300, maxWidth: 500),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          children: [
            const Icon(Icons.settings),
            Text('Email'),
            Text('Passoword'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {},
              child: const Text('Log Out'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {},
              child: const Text('Delete Account'),
            ),
          ],
        ),
      ),
    );
  }
}
