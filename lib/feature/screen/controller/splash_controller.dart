import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';

class SplashController extends GetxController {

  Future<void> moveToHomeScreen() async {

    await Future.delayed(const Duration(seconds: 7));

    Get.offNamed(AppPages.loginScreen);
  }

  @override
  void onReady() {
    super.onReady();
    moveToHomeScreen();
  }
}