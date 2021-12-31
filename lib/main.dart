import 'package:flutter/material.dart';
import 'package:flutter_samples/message.dart';
import 'package:flutter_samples/my_controller.dart';
import 'package:flutter_samples/const.dart';
import 'package:get/get.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      translations: Message(),
      title: 'Internationalization',
      locale: Locale(Const.language, Const.country),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Internationalization'),
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

  MyController myController = Get.put(MyController());

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
            Text('greeting'.tr),

            ElevatedButton(onPressed: (){
              myController.changeLanguage(Const.ko_KR.split('_')[0], Const.ko_KR.split('_')[1]);
            }, child: Text("한국어")),

            ElevatedButton(onPressed: (){
              myController.changeLanguage(Const.en_US.split('_')[0], Const.en_US.split('_')[1]);
            }, child: Text("영어")),

            ElevatedButton(onPressed: (){
              myController.changeLanguage(Const.fr_FR.split('_')[0], Const.fr_FR.split('_')[1]);
            }, child: Text("프랑스어"))

          ],
        ),
      ),
    );
  }
}
