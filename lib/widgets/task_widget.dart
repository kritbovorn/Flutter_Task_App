import 'package:flutter/material.dart';

import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  final Color? color;
  const TaskWidget({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.widthDimension(20),
        vertical: Dimensions.heightDimension(8),
      ),
      width: double.maxFinite,
      height: Dimensions.deviceScreenHeight / 14,
      decoration: BoxDecoration(
        color: AppColors.taskColor,
        borderRadius: BorderRadius.circular(Dimensions.widthDimension(10)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: Dimensions.deviceScreenHeight / 14 * 0.35,
          color: color,
        ),
      ),
    );
  }
}
