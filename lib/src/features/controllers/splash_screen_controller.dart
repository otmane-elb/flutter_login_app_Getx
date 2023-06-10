import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding_screen.dart';

class SplashScreeController extends GetxController {
  static SplashScreeController get find => Get.find();
  RxBool animated = false.obs;
  Future startanimation() async {
    await Future.delayed(const Duration(milliseconds: 500));

    animated.value = true;

    await Future.delayed(const Duration(milliseconds: 5000));
    Get.off(const OnBoardingScreen());
  }
}
