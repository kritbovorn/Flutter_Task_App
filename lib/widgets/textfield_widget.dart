import 'package:flutter/material.dart';

import 'package:task_app/colors/app_colors.dart';
import 'package:task_app/utils/responsive_widget.dart';

class TextfieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final int? maxLines;
  final double? borderRadius;
  final Widget? prefixIcon;
  const TextfieldWidget({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.maxLines,
    this.borderRadius = 0.0,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: Dimensions.widthDimension(Dimensions.widthDimension(20)),
          vertical: Dimensions.widthDimension(Dimensions.widthDimension(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius == 0.0 ? Dimensions.heightDimension(30) : borderRadius!),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius == 0 ? Dimensions.heightDimension(30) : borderRadius!),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
