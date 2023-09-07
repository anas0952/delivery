import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/homescreencontroller.dart';

import 'coustombotonappbar.dart';

class CoustomBotomAppBarHome extends StatelessWidget {
  const CoustomBotomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
                child: Row(children: [
              ...List.generate(controller.botomappbar.length, ((index) {
                return Expanded(
                  child: CoustomButtonAppBar(
                      iconButton: controller.botomappbar[index]['icon'],
                      textbutton: controller.botomappbar[index]['title'],
                      active: controller.currentPage == index ? true : false,
                      onPressed: () {
                        controller.changedpage(index);
                      }),
                );
              }))
            ])));
  }
}
