import 'package:flutter/material.dart';
import 'package:task_manager_apps/feature/screen/view/splash_screen/splash_screen_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: SplashScreenView(),


    );
  }
}
