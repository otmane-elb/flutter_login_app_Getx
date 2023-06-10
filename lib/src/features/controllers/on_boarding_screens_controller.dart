import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/models/on_boarding_screens_model.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentpage = 0.obs;

  final pages = [
    OnBoardingWdiget(
      model: OnBoardingModel(
          image: oOnBoardingImage1,
          title: oonboardingpage1text,
          counter: '1/3',
          bgcolor: oOnBoardingPage1Color),
    ),
    OnBoardingWdiget(
      model: OnBoardingModel(
          image: oOnBoardingImage2,
          title: oonboardingpage2text,
          counter: '2/3',
          bgcolor: oOnBoardingPage2Color),
    ),
    OnBoardingWdiget(
      model: OnBoardingModel(
          image: oOnBoardingImage3,
          title: oonboardingpage3text,
          counter: '3/3',
          bgcolor: oOnBoardingPage3Color),
    ),
  ];
  onPageChangeCallback(int activePageIndex) =>
      currentpage.value = activePageIndex;
}
