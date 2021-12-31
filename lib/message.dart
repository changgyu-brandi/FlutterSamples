import 'package:flutter_samples/const.dart';
import 'package:get/get.dart';

class Message extends Translations{

  Map<String, String> krForm = {
    'greeting': '안녕하세요',
  };

  Map<String, String> enForm = {
    'greeting': 'Hello',
  };

  Map<String, String> frForm = {
    'greeting': 'Bonjour',
  };

  @override
  Map<String, Map<String, String>> get keys => {

    Const.ko_KR : krForm,

    Const.en_US : enForm,

    Const.fr_FR : frForm

  };
}