import 'package:flutter_samples/api/api_service.dart';
import 'package:flutter_samples/product/model/product_model.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if(products != null){
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
