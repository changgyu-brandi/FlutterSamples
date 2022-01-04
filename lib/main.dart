import 'package:flutter/material.dart';
import 'package:flutter_samples/binding_sets.dart';
import 'package:flutter_samples/my_controller.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'home_controller_binding.dart';

void main() {
  BindingSets().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Binding',
      // getPages: [
      //   GetPage(name: '/home', page: ()=> Home(), binding: HomeControllerBinding())
      // ],
      getPages: [
        GetPage(
            name: '/home',
            page: () => Home(),
            binding: BindingsBuilder(() => {HomeControllerBinding()}))
      ],
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
            Obx(() => Text(
                'MyController Count is ${Get.find<MyController>().count}')),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increaseCount();
                },
                child: Text('Increase MyController Count')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: Text('Go To Home')),
          ],
        ),
      ),
    );
  }
}
