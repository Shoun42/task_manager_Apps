import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';
import 'package:task_manager_apps/feature/screen/bindings/login_screen_binding.dart';
import 'package:task_manager_apps/feature/screen/bindings/profile_task_binding.dart';
import 'package:task_manager_apps/feature/screen/bindings/splash_binding.dart';
import 'package:task_manager_apps/feature/screen/controller/new_task_controller.dart';
import 'package:task_manager_apps/feature/screen/view/Email_Screen/email_screen.dart';
import 'package:task_manager_apps/feature/screen/view/PinVarificationScreen/pin_verification_screen.dart' show PinVerificationScreen;
import 'package:task_manager_apps/feature/screen/view/Set_Password/set_password.dart';
import 'package:task_manager_apps/feature/screen/view/login_screen/login_screen.dart';
import 'package:task_manager_apps/feature/screen/view/new%20task%20screen/new_task_screen.dart';
import 'package:task_manager_apps/feature/screen/view/sign%20Up/sign_up.dart';
import 'package:task_manager_apps/feature/screen/view/splash_screen/splash_screen_view.dart';

class AppRoutes{
  static final initialRoute = AppPages.splashScreen;
  static List <GetPage> routes = [

    GetPage(name: AppPages.splashScreen, page: ()=>SplashScreenView(), binding: SplashBindings()),
    GetPage(name: AppPages.loginScreen, page: ()=>LoginScreen(), binding: LoginScreenBindings()),
    GetPage(name: AppPages.emailScreen, page: ()=>EmailScreen(), binding: LoginScreenBindings()),
    GetPage(name: AppPages.pinVerification, page: ()=>PinVerificationScreen(), binding: LoginScreenBindings()),
    GetPage(name: AppPages.setPasswordScreen, page: ()=>SetPasswordScreen(), binding: LoginScreenBindings()),
    GetPage(name: AppPages.signUpView, page: ()=>RegisterView(), binding: LoginScreenBindings()),
    GetPage(name: AppPages.newTaskView, page: ()=>NewTaskScreen(), binding: ProfileTaskBinding()),


  ];
}