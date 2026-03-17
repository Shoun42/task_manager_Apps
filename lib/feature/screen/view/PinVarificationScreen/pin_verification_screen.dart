import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/common/common_button.dart' show CommonButton;
import 'package:task_manager_apps/feature/screen/controller/email_controller.dart';

class PinVerificationScreen extends GetView<EmailController> {
  PinVerificationScreen({super.key});

  final TextEditingController pinCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: CommonBackground(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 40),

                const Text(
                  "PIN Verification",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "A 6 digit verification pin will send to your\nemail address",
                ),

                const SizedBox(height: 40),

                Center(
                  child: Pinput(
                    controller: pinCtrl,
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    onCompleted: (pin) {
                      debugPrint("PIN: $pin");
                    },
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      CommonButton(style: ButtonStyle(),
                        child: () {

                          controller.moveToSetPass();

                        },

                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Have account? "),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}