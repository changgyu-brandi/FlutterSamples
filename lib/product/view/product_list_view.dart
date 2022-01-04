import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/common/app_color.dart';
import 'package:flutter_samples/common/app_string.dart';
import 'package:flutter_samples/product/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  final ProductListController productListController =
      Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppString.productList)),
      body: Obx(() {
        if (productListController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
            itemCount: productListController.productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(children: [
                    Container(
                        width: 150,
                        height: 100,
                        margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            productListController.productList[index].imageLink,
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                            color: AppColor.purple,
                            colorBlendMode: BlendMode.color,
                          ),
                        )
                    ),

                    Flexible(child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(productListController.productList[index].name),
                        Text(productListController.productList[index].brand),
                        Text(productListController.productList[index].category)

                      ],
                    ))

                  ]),

                  Container(color: AppColor.grey200, height: 2,)
                ],
              );
            });
      }),
    );
  }
}
