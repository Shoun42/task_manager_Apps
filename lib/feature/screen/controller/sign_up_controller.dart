import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';

class SignUpController extends GetxController{


  void moveToHomePage() {
    Get.toNamed(AppPages.homeView);
  }

  void moveToSignIn() {
    Get.toNamed(AppPages.loginScreen);
  }

}