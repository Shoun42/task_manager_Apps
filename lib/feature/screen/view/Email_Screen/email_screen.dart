import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/common/common_button.dart';
import 'package:task_manager_apps/feature/screen/controller/email_controller.dart';

class EmailScreen extends GetView <EmailController> {
  EmailScreen({super.key});

  final TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            Text(
                  "Your Email Address",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "A 6 digit verification pin will send your\nemail address",
                ),


            const SizedBox(height: 40),

            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                hintText: "Enter Email",
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

                    controller.moveToPinVerification();

                    },

                  ),
                ],
              ),
            ),
            SizedBox(height:10 ,),

            Center(
              child: TextButton(
                onPressed: () {
                  controller.moveToSignIn();
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
      ),),

    );
  }
}