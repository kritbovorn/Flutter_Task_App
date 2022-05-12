// https://www.youtube.com/watch?v=-Sol_RMG_fo
// https://www.youtube.com/watch?v=ITnwVIpZa3s&list=PL3nPgdhXQtHd5Zvc3RpzkOMnGcwGLPnEJ

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controllers/data_controller.dart';
import 'package:task_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  _loadData() async {
    await Get.find<DataController>().getData();
  }

  @override
  Widget build(BuildContext context) {

    Get.lazyPut(() => DataController());
   _loadData();
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      // home: const HomeScreen(),
      // home: const AddTask(),
    );
  }
}
