import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/components/divider_with_text.dart';
import 'package:food_recipe/components/text_field_custom.dart';
import 'package:food_recipe/core/library_style.dart';
import 'package:food_recipe/generated/assets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.color.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            Text('Hello,',
                style: theme.font.headerTextBold
                    .copyWith(color: theme.color.black)),
            Text('Welcome Back!',
                style: theme.font.largetTextRegular
                    .copyWith(color: theme.color.black)),
            const SizedBox(height: 57),
            const TextFieldCustom(
              title: 'Email',
              hintText: 'Enter Email',
            ),
            const SizedBox(height: 30),
            const TextFieldCustom(
              title: 'Password',
              hintText: 'Enter Password',
            ),
            const SizedBox(height: 20),
            Text('Forgot Password?',
                style: theme.font.smallTextRegular
                    .copyWith(color: theme.color.secondary100)),
            const SizedBox(height: 25),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: theme.color.primary100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: DividerWithText(
                height: 1,
                label: 'Or Sign in With',
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: theme.color.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: theme.color.gray4,
                            spreadRadius: 0.5,
                          )
                        ]),
                    child: SvgPicture.asset(
                      Assets.iconsGoogle,
                      height: 20,
                      width: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
