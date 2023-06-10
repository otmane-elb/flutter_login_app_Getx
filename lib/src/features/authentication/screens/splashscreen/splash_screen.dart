import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashController = Get.put(SplashScreeController());

  @override
  Widget build(BuildContext context) {
    splashController.startanimation();
    return Scaffold(
      backgroundColor: const Color(0xFF65BCFF),
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: oAnimationtime),
                top: 0,
                left: splashController.animated.value ? 300 : -30,
                child: const Image(
                  image: AssetImage(oSplashTopIcon),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: oAnimationtime),
                top: splashController.animated.value ? 40 : -20,
                left: oDefaultSize,
                child: AnimatedOpacity(
                  opacity: splashController.animated.value ? 1 : 0,
                  duration: const Duration(milliseconds: oAnimationtime),
                  child: Column(
                    children: [
                      Text(
                        oAppName,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        oApptagLine,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 100,
              child: Image(
                image: AssetImage(oSplashImage),
              ),
            ),
            Positioned(
                right: oDefaultSize,
                bottom: 40,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ))
          ],
        ),
      ),
    );
  }
}
