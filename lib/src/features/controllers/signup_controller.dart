import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/auth.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  void signup(String email, String password) async {
    AuthRepo.instance.createUserWithEmailAndPassword(email, password);
  }
}
