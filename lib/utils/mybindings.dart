import 'package:get/get.dart';
import 'package:getx/controller/home2_controller.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/controller/mylocal_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController(),fenix:true);
    Get.lazyPut(()=> Home2Controller(),fenix:true);
    Get.put(MyLocaleController());
  }
}