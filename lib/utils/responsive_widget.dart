import 'package:get/get.dart';

class Dimensions {
  static double deviceScreenHeight = Get.context!.height;
  static double deviceScreenWidth = Get.context!.width;

  static double heightDimension(double dimension) {
    return deviceScreenHeight / (deviceScreenHeight / dimension);
  }

  static double widthDimension(double dimension) {
    return deviceScreenWidth / (deviceScreenWidth / dimension);
  }
}
