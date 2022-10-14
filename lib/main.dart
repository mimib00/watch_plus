import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:watch_plus/core/routes/routes.dart';
import 'package:watch_plus/core/theme/app_theme.dart';
import 'package:watch_plus/firebase_options.dart';
import 'package:watch_plus/views/auth/contoller/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(AuthController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return GetMaterialApp(
          title: 'Watch+',
          theme: AppTheme.dark,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          getPages: Routes.allRoutes,
        );
      },
    );
  }
}
