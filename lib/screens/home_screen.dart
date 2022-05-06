import 'package:flutter/material.dart';
import 'package:task_app/colors/app_colors.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hello',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 58,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'start your beautiful day.',
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ButtonWidget(
                    text: 'Add Task',
                    bgColor: AppColors.mainColor,
                    color: Colors.white,
                  ),
                  ButtonWidget(
                    text: 'View All',
                    color: AppColors.mainColor,
                    bgColor: Colors.white,
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