import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/login/signup_screen.dart';
import 'package:login_app/src/features/controllers/logins_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 100.0,
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: controller.email,
              decoration: const InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: controller.password,
              decoration: const InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                controller.login(controller.email.text.trim(),
                    controller.password.text.trim());
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const SignupScreen());
                  },
                  child: const Text('Sign up?'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
