import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';
import 'package:task_app/widgets/button_widget.dart';
import 'package:task_app/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    TextEditingController _detailEditingController = TextEditingController();

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
                          textEditingController: _textEditingController,
                          hintText: 'Task name',
                          prefixIcon: const Icon(
                            Icons.note_add_sharp,
                          ),
                        ),
                        TextfieldWidget(
                          textEditingController: _detailEditingController,
                          hintText: 'Task detail...',
                          maxLines: 5,
                        ),
                        const ButtonWidget(
                          text: 'Add',
                          color: Colors.white,
                          bgColor: AppColors.mainColor,
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
