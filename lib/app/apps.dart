import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task_manager_apps/app/appColor.dart';
import 'package:task_manager_apps/app/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            titleLarge:TextStyle(
                fontSize: 25,fontWeight: FontWeight.w800
            ),
            titleSmall: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold,color:AppColor.greenColor
            ),
            titleMedium: TextStyle(
                fontWeight: FontWeight.w500 ,fontSize: 18
            )
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}