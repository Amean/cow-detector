import 'package:flutter/material.dart';
import 'package:cow_detector/services/auth_service.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Container(
        constraints: const BoxConstraints(minWidth: 300, maxWidth: 500),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Form(
          key: _formKey,
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
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelText: 'Password',
                border: const OutlineInputBorder(),
                fillColor: Theme.of(context).colorScheme.background,
                filled: true,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
            const SizedBox(height: 20),
            // TextButton(
            //   onPressed: () {context.go('/')}
            //   child: Text('Trouble logging in?'),)
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, save the value.
                  _formKey.currentState!.save();
                  final usercred = await AuthService()
                      .signInWithEmailAndPassword(_email, _password);
                  if (usercred != null) {
                    context.go('/home');
                  }
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                context.go('/signup');
              },
              child: Text('Not signed up yet?'),
            )
          ]),
        ),
      ),
    );
  }
}
