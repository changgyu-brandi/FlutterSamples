import 'package:flutter/material.dart';
import 'package:flutter_samples/home.dart';
import 'package:flutter_samples/next_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/home/:someValue', page: () => Home()),
        GetPage(
            name: '/nextScreen',
            page: () => NextScreen(),
            transition: Transition.rightToLeft),
      ],
      //unknownRoute: GetPage(name: '/notfound', page: ()=>(UnknownPage)),
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
              onPressed: () {
                Get.toNamed("/home?channel=ChangGyu&content=Flutter");
                //Get.toNamed("/home/test");
              },
            )
          ],
        ),
      ),
    );
  }
}
