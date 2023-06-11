
import 'dart:ui';

import 'package:get/get.dart';

class MyLocaleController extends GetxController{

  void changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    Get.updateLocale(locale);
  }
}