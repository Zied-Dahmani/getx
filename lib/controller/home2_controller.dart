import 'package:get/get.dart';


class Home2Controller extends GetxController {
  var counter = 0.obs;
  String? name;

  @override
  void onInit() {
    name = Get.arguments['name'];
    super.onInit();
  }

  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
