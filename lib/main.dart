import 'package:flutter/material.dart';
import 'package:food_recipe/core/navigation_service.dart';
import 'package:food_recipe/ui/introduction/ui/introduction_screen.dart';
import 'package:food_recipe/ui/sign_in/ui/sign_in_screen.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroductionScreen(),
        '/sign_in': (context) => const SignInScreen(),
      },
    ),
  );
}
