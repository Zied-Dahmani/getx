import 'package:get/get.dart';

class SettingsService extends GetxService {
  RxBool lorem = false.obs;

  SettingsService init() {
    lorem.value = true;
    return this;
  }

  toggle() {
    lorem.value = !lorem.value;
  }
}
