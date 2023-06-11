import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home2_controller.dart';
import 'package:getx/service/settings_service.dart';

class Home2 extends GetView<SettingsService> {
  Home2({super.key});

  final Home2Controller _home2controller = Get.find();

  @override
  Widget build(BuildContext context) {
    print(_home2controller.name);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home2'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              onPressed: () {
                controller.toggle();
              },
              child: const Icon(Icons.remove)),
          GetX<SettingsService>(builder: (c) => Text(c.lorem.toString(),style: const TextStyle(color: Colors.black))),
          MaterialButton(
              onPressed: () {
                controller.toggle();
              },
              child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
