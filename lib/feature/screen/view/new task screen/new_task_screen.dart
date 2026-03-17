import 'package:flutter/material.dart';
import 'package:task_manager_apps/feature/common/common_brackground.dart';
import 'package:task_manager_apps/feature/common/common_button.dart';

class NewTaskScreen extends StatelessWidget {
  NewTaskScreen({super.key});

  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController descCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Task")),
      body:CommonBackground(child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: titleCtrl,
              decoration: const InputDecoration(
                hintText: "Task Title",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: descCtrl,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Description",
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


                    },

                  ),
                ],
              ),
            ),


          ],
        ),
      ),)
    );
  }
}