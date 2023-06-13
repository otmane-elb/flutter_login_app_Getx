import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_app/src/features/authentication/screens/dashboard.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:login_app/src/repository/authentication_repo/exceptions/auth_exceptions.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 2));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _usercheck);
    super.onReady();
  }

  _usercheck(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashboardScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashboardScreen())
          : Get.offAll(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.fromCode(e.code);
      print("Firbase auth exeption ${ex.message}");
      throw ex;
    } catch (e) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print("Exception :${ex.message}");
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException {}
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
