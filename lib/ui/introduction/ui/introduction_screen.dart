import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/core/library_style.dart';
import 'package:food_recipe/core/navigation_service.dart';

import 'package:food_recipe/generated/assets.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset(Assets.imagesChefHat, height: 79),
            const SizedBox(height: 14),
            Text(
              '100K+ Premium Recipe',
              style:
                  theme.font.mediumTextBold.copyWith(color: theme.color.white),
            ),
            const SizedBox(height: 200),
            Text(
              textAlign: TextAlign.center,
              'Get \n Cooking',
              style: theme.font.tittleTextBold
                  .copyWith(color: theme.color.white, height: 1.2),
            ),
            const SizedBox(height: 20),
            Text(
              'Simple way to find Tasty Recipe',
              style: theme.font.normalTextRegular
                  .copyWith(color: theme.color.white),
            ),
            const SizedBox(height: 64),
            SizedBox(
              height: 54,
              width: 243,
              child: ElevatedButton(
                onPressed: () {
                  NavigationService.navigatorKey.currentState
                      ?.pushNamed('/sign_in');
                },
                style: ElevatedButton.styleFrom(
                  primary: theme.color.primary100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start Cooking',
                      style: theme.font.normalTextBold
                          .copyWith(color: theme.color.white),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(
                      Assets.iconsArrowRightOutline,
                      color: theme.color.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
