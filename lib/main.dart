import 'package:flutter/material.dart';
import 'package:flutter_samples/common/app_color.dart';
import 'package:flutter_samples/product/view/product_list_view.dart';
import 'package:get/get.dart';

import 'common/app_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purple,
      ),
      home: ProductListView(),
    );
  }
}
