import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController{

  void changeLanguage(String language, String country){
    Get.updateLocale(Locale(language, country));
  }

}