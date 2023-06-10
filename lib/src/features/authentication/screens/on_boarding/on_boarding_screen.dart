import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/on_boarding_screens_model.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          liquidController: controller,
          onPageChangeCallback: (activePageIndex) {
            setState(() {
              currentpage = activePageIndex;
            });
          },
          pages: [
            OnBoardingWdiget(
              model: OnBoardingModel(
                  image: oOnBoardingImage1,
                  title: oonboardingpage1text,
                  counter: '1/3',
                  bgcolor: oOnBoardingPage1Color),
            ),
            OnBoardingWdiget(
              model: OnBoardingModel(
                  image: oOnBoardingImage2,
                  title: oonboardingpage2text,
                  counter: '2/3',
                  bgcolor: oOnBoardingPage2Color),
            ),
            OnBoardingWdiget(
              model: OnBoardingModel(
                  image: oOnBoardingImage3,
                  title: oonboardingpage3text,
                  counter: '3/3',
                  bgcolor: oOnBoardingPage3Color),
            ),
          ],
        ),
        Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                  dotHeight: 5, activeDotColor: Colors.blueAccent),
            ))
      ]),
    );
  }
}
