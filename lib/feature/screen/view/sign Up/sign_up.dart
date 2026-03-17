import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/screen/controller/sign_up_controller.dart';

class RegisterView extends GetView <SignUpController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child:SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 80),

              /// Title
              const Text(
                "Join With Us",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              /// Email
              _buildTextField("Email"),

              const SizedBox(height: 15),

              /// First Name
              _buildTextField("First Name"),

              const SizedBox(height: 15),

              /// Last Name
              _buildTextField("Last Name"),

              const SizedBox(height: 15),

              /// Mobile
              _buildTextField("Mobile"),

              const SizedBox(height: 15),

              /// Password
              _buildTextField("Password", isPassword: true),

              const SizedBox(height: 25),

              /// Register Button
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {

                    controller.moveToHomePage();

                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              /// Sign in
              Center(
                child: GestureDetector(
                  onTap: () {

                    controller.moveToSignIn();
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Have account? ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),)
    );
  }

  /// TextField Widget
  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}