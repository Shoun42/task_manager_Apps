import 'package:get/get.dart';
import 'package:task_manager_apps/feature/screen/controller/email_controller.dart';
import 'package:task_manager_apps/feature/screen/controller/login_screen_controller.dart';
import 'package:task_manager_apps/feature/screen/controller/set_password_controller.dart';
import 'package:task_manager_apps/feature/screen/controller/sign_up_controller.dart';

class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
          () => LoginScreenController(),
    );

    Get.put(EmailController());

    Get.put(SetPasswordController());

    Get.put(SignUpController());



  }
}