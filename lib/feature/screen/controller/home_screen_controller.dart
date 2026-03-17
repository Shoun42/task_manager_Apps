import 'package:get/get.dart';
import 'package:task_manager_apps/app/app_pages.dart';

class HomeScreenController extends GetxController{

  void toNameNewTask (){
    Get.toNamed(AppPages.newTaskView);



  }

}