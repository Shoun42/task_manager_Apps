import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/screen/controller/set_password_controller.dart';

class SetPasswordScreen extends GetView <SetPasswordController> {
  SetPasswordScreen({super.key});

  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController confirmCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            const SizedBox(height: 30),

            const Text(
              "Set Password",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Minimum length password & character with \n Latter and number combination",
            ),

            const SizedBox(height: 40),


            TextField(
              controller: passCtrl,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: confirmCtrl,
              decoration: const InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  onPressed: () {
                    controller.moveToSignUp();
                  },
                  child: const Text("Confirm",style: TextStyle(color:Colors.white,),
                  ),
                )
            ),

            const SizedBox(height: 20),

            Center(
              child: TextButton(
                onPressed: () {
                  // Get.to(SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("have account? "),
                    Text("Sign In",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),

                  ],),

              ),
            ),
          ],
        ),
      ),)
    );
  }
}