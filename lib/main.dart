import 'package:flutter/material.dart';
import 'package:flutter_samples/my_getbuilder_controller.dart';
import 'package:flutter_samples/my_getx_controller.dart';
import 'package:flutter_samples/my_obx_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'State Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  MyObxController myObxController = Get.put(MyObxController());
  MyGetXController myGetXController = Get.put(MyGetXController());
  MyGetBuilderController myGetBuilderController = Get.put(MyGetBuilderController());

  @override
  Widget build(BuildContext context) {
    print('_MyHomePageState build');
    //앱 최초실행에는 한번만 빌드되지만 이후에는 2번빌드된다.

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('State Management'),
            //Obx - Controller가 이미 initialized 된 상태일때 사용
            // Obx(() => Text('Count : ${myObsController.student.age}')),
            // ElevatedButton(
            //     onPressed: () {
            //       myObsController.plusAgeByPropertyObs();
            //     },
            //     child: Text("increase count")
            // )

            //GetX - Controller가 아직 initialized 되지 않았을때, 초기화작업이 필요할때 사용
            // GetX<MyGetXController>(
            //   init: Get.find<MyGetXController>(),
            //   builder: (controller) {
            //     return Text('Count : ${controller.count} ${myObxController.student.age}');
            //   },
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       Get.find<MyGetXController>().increaseCount();
            //     },
            //     child: Text("increase count")),

            //GetBuilder - 위젯을 전체적으로 rebuilding 할때 사용, 아이디를 통해 특정 위젯 업데이트 가능
            GetBuilder<MyGetBuilderController>(
                init: myGetBuilderController,
                id: "firstCount",
                builder: (controller){
                  return Text("firstCount : ${controller.count}");
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyGetBuilderController>().increaseCount("firstCount");
                },
                child: Text("increase count")),

            GetBuilder<MyGetBuilderController>(
                init: myGetBuilderController,
                id: "secondCount",
                builder: (controller){
                  return Text("secondCount : ${controller.count}");
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyGetBuilderController>().increaseCount("secondCount");
                },
                child: Text("increase count")),
          ],
        ),
      ),
    );
  }
}