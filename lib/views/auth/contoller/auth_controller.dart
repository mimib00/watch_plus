import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/core/routes/routes.dart';

class AuthController extends GetxController with GetTickerProviderStateMixin {
  late Rx<TabController> tabController;

  final loginForm = GlobalKey<FormState>();
  final registerForm = GlobalKey<FormState>();
  final extraForm = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final username = TextEditingController();
  final phone = TextEditingController();
  final country = TextEditingController();

  void goto() {
    final index = tabController.value.index;
    if (index < 4) {
      tabController.value.animateTo(index + 1);
    } else {
      Get.offAllNamed(Routes.root);
    }
    update();
  }

  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this).obs;
    super.onInit();
  }
}
