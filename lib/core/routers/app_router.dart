import 'package:docdoc_app/core/routers/routes.dart';
import 'package:docdoc_app/features/login/ui/login_screen.dart';
import 'package:docdoc_app/features/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(' no Route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}