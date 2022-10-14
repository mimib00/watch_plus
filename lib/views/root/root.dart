import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';
import 'package:watch_plus/views/root/controller/navigation_controller.dart';

class RootScreen extends GetView<NavigationController> {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: AppBar(
            title: Image.asset("assets/logo.png", height: kToolbarHeight - 35),
          ),
          body: controller.screen,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => controller.goto(value),
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.index.value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.home_alt),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.compass),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.users_alt),
                label: "Friends",
              ),
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.history),
                label: "Upcoming",
              ),
            ],
          ),
        );
      },
    );
  }
}
