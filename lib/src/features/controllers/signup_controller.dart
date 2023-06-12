import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  Future<void> signup(String name, String email, String password) async {
    final url = Uri.parse(
        'https://testapi.io/api/otmane/https://testapi.io/api/otmane/signup');
    print(name + email + password);
    final response = await http.post(
      url,
      body: {
        'name': name,
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Signup was successful
      print('Signup successful');
    } else {
      // Signup failed
      print('Signup failed with status code: ${response.statusCode}');
    }
  }
}
