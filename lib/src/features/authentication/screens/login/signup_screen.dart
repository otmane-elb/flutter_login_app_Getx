import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/Login/login_screen.dart';
import 'package:login_app/src/features/controllers/signup_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

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
              controller: controller.name,
              decoration: const InputDecoration(
                hintText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 10.0),
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
                controller.signup(controller.name.text, controller.email.text,
                    controller.password.text);
              },
              child: const Text('Signup'),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
