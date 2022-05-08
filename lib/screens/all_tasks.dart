import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';
import 'package:task_app/widgets/button_widget.dart';
import 'package:task_app/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = [
      "Try harder",
      "Try smarter",
      "Try again and again",
    ];

    Widget leftEditIcon = Container(
      alignment: Alignment.centerLeft,
      color: const Color(0xff2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );

    Widget rightDeleteIcon = Container(
      alignment: Alignment.centerRight,
      color: Colors.red,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );

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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: myData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: ObjectKey(index),
                      background: leftEditIcon,
                      secondaryBackground: rightDeleteIcon,
                      onDismissed: (DismissDirection direction) {
                        debugPrint('### DISMISSED');
                      },
                      confirmDismiss: (DismissDirection direction) async {
                        // debugPrint('Are you confirm to delete it, Sire');
                        if (direction == DismissDirection.startToEnd) {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (_) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.widthDimension(20),
                              ),
                              height: Dimensions.deviceScreenHeight * 0.5,
                              decoration: BoxDecoration(
                                  color: AppColors.modalBottomSheetColor
                                      .withOpacity(0.4),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        Dimensions.heightDimension(20)),
                                    topRight: Radius.circular(
                                        Dimensions.heightDimension(20)),
                                  )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const ButtonWidget(
                                    text: 'View',
                                    color: Colors.white,
                                    bgColor: AppColors.mainColor,
                                  ),
                                  SizedBox(
                                    height: Dimensions.heightDimension(20),
                                  ),
                                  const ButtonWidget(
                                    text: 'Edit',
                                    color: Colors.white,
                                    bgColor: AppColors.mainColor,
                                  ),
                                ],
                              ),
                            ),
                          );
                          return false;
                        } else {
                          return Future.delayed(
                            const Duration(seconds: 1),
                            () => direction == DismissDirection.endToStart,
                          );
                        }
                      },
                      child: TaskWidget(
                        text: myData[index],
                        color: Colors.blueGrey,
                      ),
                    );
                  },
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
                            onPressed: () => Get.back(),
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
