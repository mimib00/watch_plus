import 'package:get/get.dart';
import 'package:watch_plus/views/home/controller/home_controller.dart';
import 'package:watch_plus/views/root/controller/navigation_controller.dart';
import 'package:watch_plus/views/splash/controller/slpash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController(), permanent: true);
    Get.put(HomeController());
  }
}
