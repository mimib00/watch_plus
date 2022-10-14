import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/core/bindings.dart';
import 'package:watch_plus/views/auth/complete_account.dart';
import 'package:watch_plus/views/auth/login.dart';
import 'package:watch_plus/views/auth/register.dart';
import 'package:watch_plus/views/root/root.dart';
import 'package:watch_plus/views/splash/splash.dart';

class Routes {
  static const root = "/";
  static const splash = "/splash";
  static const login = "/login";
  static const register = "/register";
  static const completeRegister = "/register/complete";

  static List<GetPage> allRoutes = [
    GetPage(name: root, page: () => const RootScreen(), binding: NavigationBinding()),
    GetPage(name: splash, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: register, page: () => const RegisterScreen()),
    GetPage(name: completeRegister, page: () => const CompleteAccount()),
  ];
}
