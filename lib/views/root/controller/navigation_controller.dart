import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/views/home/home.dart';

class NavigationController extends GetxController {
  RxInt index = 0.obs;
  List<Widget> screens = [
    const HomeScreen(),
    Container(color: Colors.amber),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  Widget get screen => screens[index.value];

  void goto(int value) {
    index.value = value;
    update();
  }
}
