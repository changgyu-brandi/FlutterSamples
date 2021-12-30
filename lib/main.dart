import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Dialog',
      home: MyHomePage(title: 'Dialog'),
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: const Text("Bottom Sheet"),
            onPressed: () {
              Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: () => {Get.changeTheme(ThemeData.light())},
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("Dark Theme"),
                          onTap: () => {Get.changeTheme(ThemeData.dark())},
                        )
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white);
            },
          )
        ]),
      ),
    );
  }
}
