import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:task_app/services/service.dart';

class DataController extends GetxController {
  DataService dataService = DataService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;

  Future<void> getData() async {
    _isLoading = true;

    Response response = await dataService.getData();

    if (response.statusCode == 200) {
      _myData = response.body;
      debugPrint("@@@ We get data :: data_controller.dart :: line 21");

      debugPrint("data_controller.dart" + _myData.toString());
      update();
    } else {
      debugPrint(
          "@@@ Oops, Something wrong about connect Server: in data_controller.dart : data_controller.dart :: line 26");
    }
  }

  Future<void> postData(String task, String taskDetail) async {
    _isLoading = true;

    Response response = await dataService.postData({
      "task_name": task,
      "task_detail": taskDetail,
    });

    if (response.statusCode == 200) {
      debugPrint(
          "@@@ Post :: data post successfully : data_controller.dart : line 41");
      update();
    } else {
      debugPrint(
          "### Post :: Failed to post data : data_controller.dart : line 43");
    }
  }
}
