import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:task_manager_apps/app/asset_path.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/screen/controller/splash_controller.dart';

class SplashScreenView extends GetView<SplashController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CommonBackground(child: Center(child:Image.asset(AssetPath.logo,width: 250,height: 300,),

    ),
      )
    );
  }
}