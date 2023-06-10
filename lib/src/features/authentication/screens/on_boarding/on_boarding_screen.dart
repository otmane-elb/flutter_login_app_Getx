import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:login_app/src/features/controllers/on_boarding_screens_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/on_boarding_screens_model.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final onboardingcontroller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          liquidController: onboardingcontroller.controller,
          pages: onboardingcontroller.pages,
          onPageChangeCallback: onboardingcontroller.onPageChangeCallback,
        ),
        Obx(
          () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: onboardingcontroller.currentpage.value,
                count: 3,
                effect: const WormEffect(
                    dotHeight: 5, activeDotColor: Colors.blueAccent),
              )),
        )
      ]),
    );
  }
}
