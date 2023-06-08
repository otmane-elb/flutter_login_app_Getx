import 'package:flutter/material.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF65BCFF),
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(oSplashTopIcon),
              ),
            ),
            Positioned(
              top: 80,
              left: oDefaultSize,
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
            const Positioned(
              bottom: 40,
              child: Image(
                image: AssetImage(oSplashImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
