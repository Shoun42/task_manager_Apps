import 'package:get/get.dart';
import 'package:task_manager_apps/feature/screen/controller/home_screen_controller.dart';
import 'package:task_manager_apps/feature/screen/controller/new_task_controller.dart';

class ProfileTaskBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(NewTaskController());
    Get.put(HomeScreenController());
  }

}