import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/controllers/data_controller.dart';
import 'package:task_app/screens/all_tasks.dart';
import 'package:task_app/utils/responsive_widget.dart';
import 'package:task_app/widgets/button_widget.dart';
import 'package:task_app/widgets/error_warning_message.dart';
import 'package:task_app/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    bool _dataValidation() {
      if (nameController.text.trim() == "") {
        ErrorMessage.taskErrorOrWarning(
            "Task Name", "### Oops: Your task name is empty");
        return false;
      } else if (nameController.text.length < 6) {
        ErrorMessage.taskErrorOrWarning("Task Name",
            "### Oops: Your Task Name should be at least 6 characters");

        return false;
      } else if (detailController.text.trim() == "") {
        ErrorMessage.taskErrorOrWarning(
            "Task Description", "### Oops: Your Task Description is empty");

        return false;
      } else if (detailController.text.length < 8) {
        ErrorMessage.taskErrorOrWarning("Task Description",
            "### Oops: Your Task Description should be at least 8 characters");

        return false;
      } else if (detailController.text.length < 8) {
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
                          textEditingController: nameController,
                          hintText: 'Task name',
                          prefixIcon: const Icon(
                            Icons.note_add_sharp,
                          ),
                        ),
                        TextfieldWidget(
                          textEditingController: detailController,
                          hintText: 'Task detail...',
                          maxLines: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_dataValidation()) {
                              Get.find<DataController>().postData(
                                nameController.text.trim(),
                                detailController.text.trim(),
                              );
                              Get.to(
                                () => const AllTasks(),
                                transition: Transition.circularReveal,
                              );
                            }
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
