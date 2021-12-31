import 'dart:io';

class Const{
  static final locale = Platform.localeName.split('_');
  static final language = locale[0];
  static final country = locale[1];

  static const ko_KR = 'ko_KR';
  static const en_US = 'en_US';
  static const fr_FR = 'fr_FR';

}
