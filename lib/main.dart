import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/service/settings_service.dart';
import 'package:getx/utils/mybindings.dart';
import 'package:getx/utils/mylocale.dart';
import 'package:getx/view/home2.dart';
import 'package:getx/view/home.dart';

void main() {
  initService();
  runApp(const MyApp());
}

initService() {
  Get.put(SettingsService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: MyBindings(),
      locale: Get.deviceLocale,
      translations: MyLocale(),
      getPages: [
        //GetPage(name: "/", page: () =>  Home(),middlewares: [AuthMiddleware()]),
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/home2", page: () => Home2()),
      ],
    );
  }
}
