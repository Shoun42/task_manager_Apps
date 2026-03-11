import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';
import 'package:task_manager_apps/feature/screen/bindings/login_screen_binding.dart';
import 'package:task_manager_apps/feature/screen/bindings/splash_binding.dart';
import 'package:task_manager_apps/feature/screen/controller/login_screen_controller.dart';
import 'package:task_manager_apps/feature/screen/view/login_screen/login_screen.dart';
import 'package:task_manager_apps/feature/screen/view/splash_screen/splash_screen_view.dart';

class AppRoutes{
  static final initailRoute = AppPages.splashScreen;
  static List <GetPage> routes = [

    GetPage(name: AppPages.splashScreen, page: ()=>SplashScreenView(), binding: SplashBindings()),
    GetPage(name: AppPages.loginScreen, page: ()=>LoginScreenView(), binding: LoginScreenBindings()),


  ];
}