import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text(
              'HomeController Count is ${Get.find<HomeController>().count}'
            )),
            ElevatedButton(onPressed: (){
              Get.find<HomeController>().increaseCount();
            }, child: Text('Increase HomeController Count')),

            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text('Back')),

          ],
        ),
      ),
    );
  }
}