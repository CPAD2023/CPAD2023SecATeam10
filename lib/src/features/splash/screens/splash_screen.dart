import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_login/main.dart';
import 'package:foodapp_login/src/features/authentication/screens/error_screen.dart';
import 'package:foodapp_login/src/features/home/screens/home_screen.dart';
import 'package:foodapp_login/src/features/onboarding/screens/onboarding_screen.dart';
import 'package:foodapp_login/src/features/welcome/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const ErrorScreen();
        } else if (snapshot.data == null) {
          if (onboardingBox?.get(1) ?? false) {
            return const WelcomeScreen();
          }
          return const OnboardingScreen();
        }
        return const HomeScreen();
      },
    ));
  }
}
