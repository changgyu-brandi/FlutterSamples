import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home Screen",
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(onPressed: () {
              Get.toNamed("/nextScreen");
            }, child: const Text("Next Screen")),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Back To Main")),

            Text(
              "channel : ${Get.parameters['channel']}, "+
                  "\ncontent : ${Get.parameters['content']}"+
              "\nsomeValue : ${Get.parameters['someValue']}",
            ),

          ],
        )),
      ),
    );
  }
}
