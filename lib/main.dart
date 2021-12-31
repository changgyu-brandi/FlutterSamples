import 'package:flutter/material.dart';
import 'package:flutter_samples/my_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  MyController myController =
      Get.put(MyController(), tag: 'controller1', permanent: true);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              //tag를 통해서 컨트롤러 가져오기
              //Get.find<MyController>(tag: 'controller1');

              //컨트롤러가 등록되어 있다면 가져오기, 싱글톤처럼 동작
              // Get.find<MyController>();

              //컨트롤러를 새로 생성해서 가져오기
              //Get.create<MyController>(() => MyController());

            }, child: Text('Button'))
          ],
        ),
      ),
    );
  }
}
