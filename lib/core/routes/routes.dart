import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/core/bindings.dart';
import 'package:watch_plus/views/auth/login.dart';
import 'package:watch_plus/views/auth/register.dart';
import 'package:watch_plus/views/splash/splash.dart';

class Routes {
  static const root = "/";
  static const splash = "/splash";
  static const login = "/login";
  static const register = "/register";

  static List<GetPage> allRoutes = [
    GetPage(name: root, page: () => const Scaffold()),
    GetPage(name: splash, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: register, page: () => const RegisterScreen()),
  ];
}
