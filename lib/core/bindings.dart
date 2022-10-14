import 'package:get/get.dart';
import 'package:watch_plus/views/splash/controller/slpash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
