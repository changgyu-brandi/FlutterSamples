import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Student{

  //개별적으로 observable하게 만들수 있고 또는
  var name = "ChangGyu".obs;
  var age = 30.obs;

  //전체적으로 observable하게 만들 수 있다.
  //var student = Student(name: :"ChangGyu", age = 30).obs
  // var name;
  // var age;
  //Student({this.name, this.age});
}