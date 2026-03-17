import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/common/common_button.dart';
import 'package:task_manager_apps/feature/screen/controller/login_screen_controller.dart';

class LoginScreen extends GetView <LoginScreenController> {
  LoginScreen({super.key});

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Get Started With \n            SP",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: passCtrl,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  CommonButton(style: ButtonStyle(),
                  child: () {

                    controller.moveToHomePage();

                  },

                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                controller.moveToEmailScreen();
              },
              child: const Text("Forgot Password?"),
            ),



            Center(
              child: TextButton(
                onPressed: () {
                   controller.moveToSignUp();
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text("Don't have account? "),
                Text("Sign Up",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),

                ],),

              ),
            ),

          ],
        ),
      ),)
    );
  }
}