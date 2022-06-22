import 'package:flutter/material.dart';
import 'package:food_recipe/core/navigation_service.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      home: Scaffold(),
    );
  }
}
