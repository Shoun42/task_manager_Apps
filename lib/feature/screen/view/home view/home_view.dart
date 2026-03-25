import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_apps/feature/common/status_card.dart';
import 'package:task_manager_apps/feature/common/task_card.dart';
import 'package:task_manager_apps/feature/screen/controller/home_screen_controller.dart';

class HomeScreen extends GetView <HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      // 🔰 Floating Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          controller.toNameNewTask();
        },
        child: const Icon(Icons.add),
      ),

      // 🔰 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "New Task"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: "Canceled"),
          BottomNavigationBarItem(icon: Icon(Icons.timelapse), label: "Progress"),
        ],
      ),

      body: Column(
        children: [

          // 🔰 Green Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            color: Colors.green,
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=3",
                  ),
                ),

                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sagor Babu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "example@email.com",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                )
              ],
            ),
          ),

          // 🔰 Status Cards
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                StatusCard(title: "Canceled"),
                StatusCard(title: "Completed"),
                StatusCard(title: "Progress"),
                StatusCard(title: "New Task"),
              ],
            ),
          ),

          // 🔰 Task List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const TaskCard( );

              },
            ),
          ),
        ],
      ),
    );
  }
}
