import 'package:flutter/material.dart';
import 'package:task_app/utils/responsive_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: Dimensions.deviceScreenHeight / 14,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(Dimensions.deviceScreenHeight / 14 / 2),
        color: bgColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: Dimensions.deviceScreenHeight / 14 / 3,
        ),
      ),
    );
  }
}
