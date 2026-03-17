import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';

class EmailController extends GetxController{

  void moveToPinVerification() {
    Get.toNamed(AppPages.pinVerification);
  }

  void moveToSetPass () {
    Get.toNamed(AppPages.setPasswordScreen);
  }

  void moveToSignIn() {
    Get.toNamed(AppPages.loginScreen);
  }
}