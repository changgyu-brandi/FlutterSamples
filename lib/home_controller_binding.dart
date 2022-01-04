import 'package:flutter_samples/home_controller.dart';
import 'package:flutter_samples/my_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}