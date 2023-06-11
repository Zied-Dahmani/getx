import 'package:flutter/material.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:get/get.dart';
import '../controller/mylocal_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController _controller = Get.find();
  final MyLocaleController _myLocaleController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    _controller.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              GetBuilder<HomeController>(
                  builder: (controller) => Text(controller.counter.toString())),
              IconButton(
                  onPressed: () {
                    _controller.increment();
                  },
                  icon: const Icon(Icons.add))
            ],
          ),
          IconButton(
              onPressed: () {
                _myLocaleController.changeLang('fr');
              },
              icon: const Icon(Icons.language)),
          IconButton(
              onPressed: () {
                _myLocaleController.changeLang('en');
              },
              icon: const Icon(Icons.language)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // Get.off(const SecondScreen()) : pushReplacement
        // Get.offAll(const SecondScreen()) : pushAndRemoveUntil
        // Get.back()
        // Get.toNamed("/first_screen")
        // Get.offNamed("/first_screen")
        onPressed: () => Get.toNamed("/home2",arguments: {'name':'lorem'}),
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
