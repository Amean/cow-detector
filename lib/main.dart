import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cow_detector/screens/home_screen.dart';
import 'package:cow_detector/screens/login_screen.dart';
import 'package:cow_detector/screens/settings_screen.dart';

void main() {
  runApp(const CowDetectorApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);

class CowDetectorApp extends StatelessWidget {
  const CowDetectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
