import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routes {
  static const root = "/";
  static const splash = "/splash";

  static List<GetPage> allRoutes = [
    GetPage(name: root, page: () => const Scaffold()),
    GetPage(name: splash, page: () => const Scaffold()),
  ];
}
