import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';

class LoginScreenController extends GetxController {

  void moveToHomePage() {
     Get.toNamed(AppPages.homeView);
  }

  void moveToEmailScreen() {
    Get.toNamed(AppPages.emailScreen);
  }
  void moveToSignUp() {
    Get.toNamed(AppPages.signUpView);
  }

}