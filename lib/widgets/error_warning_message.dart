import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorMessage {
  static void taskErrorOrWarning(String taskName, String taskErrorOrWarning) {
    Get.snackbar(
      taskName,
      taskErrorOrWarning,
      // backgroundColor: AppColors.mainColor,
      titleText: Text(
        taskName,
        style: const TextStyle(
          color: Color.fromARGB(255, 99, 53, 53),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      messageText: Text(
        taskErrorOrWarning,
        style: const TextStyle(
          color: Color.fromARGB(255, 53, 9, 183),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
