import 'package:flutter_samples/student.dart';
import 'package:get/get.dart';

class MyObxController extends GetxController{

  var student = Student();

  void plusAgeByPropertyObs(){
    student.age = student.age+1;
  }

  //객체 전체가 bs로 설정됐을때
  // var student2 = Student(name: "ChangGyu", age: 30).obs;
  // void plusAgeByObjectObs(){
  //   student.update((value){
  //     value.age = value.age+1;
  //   });
  // }

  @override
  void onInit() {
    print('MyObxController is initialized');
  }

}