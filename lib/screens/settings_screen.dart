import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cow_detector/services/auth_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _auth = AuthService();
  bool isEditingEmail = false;
  bool isEditingPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            context.go('/home');
          },
        ),
      ),
      body: Container(
        constraints: const BoxConstraints(minWidth: 300, maxWidth: 500),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          children: [
            const Icon(Icons.settings),
            Text('Email'),
            if (!isEditingEmail)
              Row(
                children: [
                  Text('email'), //_auth.getCurrentUser().email),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {
                      setState(() {
                        isEditingEmail = true;
                      });
                    },
                  ),
                ],
              ),
            if (isEditingEmail)
              Row(
                children: [
                  TextFormField(),
                  IconButton(
                    icon: const Icon(
                      Icons.save,
                    ),
                    onPressed: () {
                      // _auth.updateEmail(newEmail);
                      setState(() {
                        isEditingEmail = false;
                      });
                    },
                  ),
                ],
              ),
            Text('Password'),
            if (!isEditingPassword)
              Row(
                children: [
                  Text('password'), //_auth.getCurrentUser().email),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {
                      setState(() {
                        isEditingPassword = true;
                      });
                    },
                  ),
                ],
              ),
            if (isEditingPassword)
              Row(
                children: [
                  TextFormField(),
                  IconButton(
                    icon: const Icon(
                      Icons.save,
                    ),
                    onPressed: () {
                      // _auth.updateEmail(newEmail);
                      setState(() {
                        isEditingPassword = false;
                      });
                    },
                  ),
                ],
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _auth.signOut(),
              child: const Text('Log Out'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _auth.deleteAccount(),
              child: const Text('Delete Account'),
            ),
          ],
        ),
      ),
    );
  }
}
