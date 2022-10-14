import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:watch_plus/core/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        Get.offAllNamed(Routes.root);
      } else {
        Get.offAllNamed(Routes.login);
      }
    });
    super.onInit();
  }
}
