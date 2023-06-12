import 'package:get/get.dart';

class LoginController extends GetxController {
  final offset = 0.0.obs;
  final double speed = 0.50; // Adjust the speed of the movement here

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    Future.delayed(const Duration(milliseconds: 16), () {
      offset.value += speed;
      if (offset.value > -1600) {
        offset.value = -2500;
      }
      print(offset.value);

      startTimer();
    });
  }
}
