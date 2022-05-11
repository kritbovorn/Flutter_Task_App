import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';
import 'package:task_app/widgets/button_widget.dart';
import 'package:task_app/widgets/error_warning_message.dart';
import 'package:task_app/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    TextEditingController detailEditingController = TextEditingController();
    bool _dataValidation() {
      if (textEditingController.text.trim() == "") {
        ErrorMessage.taskErrorOrWarning(
            "Task Name", "### Oops: Your task name is empty");
        return false;
      } else if (textEditingController.text.length < 6) {
        ErrorMessage.taskErrorOrWarning("Task Name",
            "### Oops: Your Task Name should be at least 6 characters");

        return false;
      } else if (detailEditingController.text.trim() == "") {
        ErrorMessage.taskErrorOrWarning(
            "Task Description", "### Oops: Your Task Description is empty");

        return false;
      } else if (detailEditingController.text.length < 8) {
        ErrorMessage.taskErrorOrWarning("Task Description",
            "### Oops: Your Task Description should be at least 8 characters");

        return false;
      } else if (detailEditingController.text.length < 8) {
        ErrorMessage.taskErrorOrWarning("Task Description",
            "### Oops: Your Task Description should be at least 8 characters");

        return false;
      }
      return true;
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/addtask1.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.mainColor,
                          size: Dimensions.heightDimension(30),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.widthDimension(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextfieldWidget(
                          textEditingController: textEditingController,
                          hintText: 'Task name',
                          prefixIcon: const Icon(
                            Icons.note_add_sharp,
                          ),
                        ),
                        TextfieldWidget(
                          textEditingController: detailEditingController,
                          hintText: 'Task detail...',
                          maxLines: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            _dataValidation();
                          },
                          child: const ButtonWidget(
                            text: 'Add',
                            color: Colors.white,
                            bgColor: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
