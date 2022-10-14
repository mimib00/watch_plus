import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/meta/utils/constants.dart';
import 'package:watch_plus/views/splash/controller/slpash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Image.asset('assets/logo.jpg', width: context.width / 2),
                  ),
                  SizedBox(
                    height: 5,
                    width: context.width / 3,
                    child: const LinearProgressIndicator(
                      color: kCremeColor,
                      backgroundColor: Colors.black,
                      minHeight: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
