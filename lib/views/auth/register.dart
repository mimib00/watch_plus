import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/core/routes/routes.dart';
import 'package:watch_plus/meta/utils/constants.dart';
import 'package:watch_plus/meta/widgets/watch_input.dart';
import 'package:watch_plus/views/auth/contoller/auth_controller.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            left: -70,
            top: -70,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [kPrimaryColor.withOpacity(0.1), kPrimaryColor.withOpacity(0.6)],
                  stops: const [0.0, 0.9],
                ),
              ),
            ),
          ),
          Positioned(
            right: -100,
            top: -100,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [kPrimaryColor.withOpacity(0.1), kPrimaryColor.withOpacity(0.4)],
                  stops: const [0.0, 0.9],
                ),
              ),
            ),
          ),
          Positioned(
            left: -100,
            bottom: -100,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [kPrimaryColor.withOpacity(0.1), kPrimaryColor.withOpacity(0.4)],
                  stops: const [0.0, 0.9],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      child: Image.asset("assets/logo.png", width: context.width / 2),
                    ),
                  ),
                  Text(
                    "Create new account",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 40),
                  Form(
                    key: controller.registerForm,
                    child: Column(
                      children: [
                        WatchInput(
                          controller: controller.email,
                          hintText: "Enter Email",
                          keybowrdType: TextInputType.emailAddress,
                          icon: Icons.email,
                          validator: (value) {
                            if (value == null || value.isEmpty) return "Please enter a email";
                            if (value.isEmail) return "Email format is invalid";
                            return null;
                          },
                        ),
                        WatchInput(
                          controller: controller.password,
                          hintText: "Enter Password",
                          obscure: true,
                          keybowrdType: TextInputType.visiblePassword,
                          icon: Icons.lock,
                          validator: (value) {
                            if (value == null || value.isEmpty) return "Please enter a password";
                            if (value.length < 8) {
                              return 'Minimum 8 characters';
                            } else if (value.length > 16) {
                              return 'Maximum 16 characters';
                            }
                            return null;
                          },
                        ),
                        WatchInput(
                          controller: controller.confirmPassword,
                          hintText: "Re-Enter Password",
                          obscure: true,
                          keybowrdType: TextInputType.visiblePassword,
                          icon: Icons.lock,
                          validator: (value) {
                            if (value == null || value.isEmpty) return "Please enter a password confirmation";
                            if (value != controller.password.text.trim()) return "Passwords Don't match";
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => Get.toNamed(Routes.completeRegister),
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          label: const Text("Create"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () => Get.offAndToNamed(Routes.login),
                    icon: const Icon(Icons.arrow_back_rounded),
                    label: const Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
