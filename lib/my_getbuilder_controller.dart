import 'package:get/get.dart';

class MyGetBuilderController extends GetxController{
  var count = 0;
  void increaseCount(String id){
    count++;
    update([id]);
  }

  @override
  void onInit() {
    print('MyGetBuilderController is initialized');
  }
}