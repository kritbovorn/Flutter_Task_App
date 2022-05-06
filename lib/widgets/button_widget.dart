import 'package:flutter/material.dart';

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
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            (MediaQuery.of(context).size.height / 14) / 2),
        color: bgColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 20,
        ),
      ),
    );
  }
}
