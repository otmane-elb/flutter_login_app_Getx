import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LiquidSwipe(
          pages: [
            Container(
              color: oOnBoardingPage1Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(oOnBoardingImage1),
                  Text(
                    'Hello this is the onboarding',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Hi',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '1/3',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Container(
              color: oOnBoardingPage2Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(oOnBoardingImage2),
                  Text(
                    'Hello this is the onboarding',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Hi',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '2/3',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Container(
              color: oOnBoardingPage3Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(oOnBoardingImage3),
                  Text(
                    'Hello this is the onboarding',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Hi',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '3/3',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
