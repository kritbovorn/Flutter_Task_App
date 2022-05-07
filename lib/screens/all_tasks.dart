import 'package:flutter/material.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: AspectRatio(
                  aspectRatio: 1.53 / 1,
                  child: Image.asset(
                    'assets/header1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.widthDimension(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            debugPrint('');
                          },
                          icon: const Icon(
                            Icons.home,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25 / 2),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            debugPrint('');
                          },
                          icon: const Icon(
                            Icons.calendar_month_sharp,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: Dimensions.heightDimension(20),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: Dimensions.deviceScreenHeight / 3.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
