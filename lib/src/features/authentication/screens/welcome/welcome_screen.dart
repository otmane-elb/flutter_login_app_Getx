import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(oWelcomeimage),
            Column(
              children: [
                Text(
                  oWelcomeTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    oWelcomesubtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        oLogin,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        oSignUp,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
