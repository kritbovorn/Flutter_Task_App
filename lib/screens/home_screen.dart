import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/screens/add_task.dart';
import 'package:task_app/screens/all_tasks.dart';
import 'package:task_app/utils/responsive_widget.dart';
import 'package:task_app/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.widthDimension(20)),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/welcome.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.deviceScreenHeight / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: Dimensions.heightDimension(58),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'start your beautiful day.',
                    style: TextStyle(
                        color: AppColors.smallTextColor,
                        fontSize: Dimensions.heightDimension(16)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.deviceScreenHeight / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Get.to(
                      () => const AddTask(),
                      transition: Transition.zoom,
                      duration: const Duration(
                        seconds: 1,
                      ),
                    ),
                    child: const ButtonWidget(
                      text: 'Add Task',
                      bgColor: AppColors.mainColor,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(
                      () => const AllTasks(),
                      transition: Transition.circularReveal,
                      duration: const Duration(seconds: 1),
                    ),
                    child: const ButtonWidget(
                      text: 'View All',
                      color: AppColors.mainColor,
                      bgColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
