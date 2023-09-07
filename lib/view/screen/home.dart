import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: const [],
            )));
  }
}
