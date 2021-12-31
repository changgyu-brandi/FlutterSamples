import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0.obs;
  var count2 = 0.obs;
  var typingText = "".obs;

  void increaseCount(){
    count++;
    count2--;
  }

  @override
  void onInit() {
    super.onInit();

    //변수가 변경될때마다 호출
    ever(count, (_)=> print("ever count : $count"));
    ever(count2, (_)=> print("ever count2 : $count2"));

    //변수들을 묶어서 변경될때마다 호출
    everAll([count, count2],(_)=> print("everAll : $count, $count2"));

    //변수가 변경될때 한번만 호출된다.
    once(count, (_)=> print("once : $count"));

    //변수가 변경될때 1초 후에 실행, 연속적으로 이벤트가 들어오면 마지막을 실행
    debounce(typingText, (_)=> print("debounce : ${typingText}"), time: Duration(seconds: 2));

    //n 초 간격동안 이벤트가 발생하도록함.
    interval(count, (_)=> print("interval : ${count}"), time: Duration(seconds: 3));

  }
}