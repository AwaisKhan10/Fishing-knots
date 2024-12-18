// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:brightcodelab/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Brightness platformBrightness =
        WidgetsBinding.instance.window.platformBrightness;
    return ScreenUtilInit(
      designSize: const Size(394, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: platformBrightness,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: const SplashScreen()),
    );
  }
}
