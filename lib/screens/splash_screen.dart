import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cow_detector/services/auth_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Check if the user is already signed in
    routeUser(AuthService().isUserLoggedIn());
  }

  Future<void> routeUser(bool isLoggedIn) async {
    if (isLoggedIn) {
      Timer(Duration(seconds: 2), () {
        context.go('/home');
      });
    } else {
      Timer(Duration(seconds: 2), () {
        context.go('/login');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Or any other loading indicator
      ),
    );
  }
}
