import 'package:flutter/material.dart';
import 'package:flutter_samples/home.dart';
import 'package:flutter_samples/person.dart';
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
      home: const MyHomePage(title: 'Navigation'),
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
            ElevatedButton(
              child: Text("Go To Home"),
              onPressed: () async {
                var person = Person(name: "chang gyu", age: 30);
                var homeData = await Get.to(
                    Home(),
                  transition: Transition.rightToLeft,
                    arguments: person
                );
                print("Received From Home : ${homeData}");
              },
            )
          ],
        ),
      ),
    );
  }
}
