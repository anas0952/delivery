import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/homescreencontroller.dart';
import 'package:delivery/view/widget/home/coustombottomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              // floatingActionButton: CircleAvatar(
              //   radius: 30,
              //   child: IconButton(
              //     onPressed: () {
              //       Get.toNamed(AppRoute.mycart);
              //     },
              //     icon: const Icon(Icons.add_shopping_cart_sharp),
              //   ),
              // ),
              // floatingActionButtonLocation:
              //     FloatingActionButtonLocation.centerDocked,
              appBar: AppBar(
                centerTitle: true,
                title: const Text("Orders "),
              ),
              bottomNavigationBar: const CoustomBotomAppBarHome(),
              body: controller.listpage.elementAt(controller.currentPage),
              // body: WillPopScope(
              //     child: ,
              //     onWillPop: () {
              //       Get.defaultDialog(
              //         onConfirm: () {
              //           exit(0);
              //         },
              //         onCancel: () {},
              //         radius: 10,
              //         buttonColor: Appcolor.listcolor,
              //         cancelTextColor: Appcolor.secouncolor,
              //         confirmTextColor: Appcolor.secouncolor,
              //         title: "Warning",
              //         middleText: "Exit the App permanently",
              //         barrierDismissible: true,
              //         titlePadding: const EdgeInsets.all(10),
              //         titleStyle: const TextStyle(
              //             fontSize: 20, color: Appcolor.primarycolor),
              //       );

              //       return Future.value(false);
              //     })
            ));
  }
}






// Row(
//                     children: [
// CoustomButtonAppBar(
//   onPressed: () {
//     controller.changedpage(0);
//   },
//   iconButton: Icons.home,
//   textButtoon: "Home",
//   active: controller.currentPage == 0 ? true : false,
// ),
//                       CoustomButtonAppBar(
//                         onPressed: () {
//                           controller.changedpage(1);
//                         },
//                         iconButton: Icons.home,
//                         textButtoon: "Profile",
//                         active: controller.currentPage == 1 ? true : false,
//                       )
//                     ],
//                   ),
//                   const Spacer(),
//                   Row(
//                     children: [
//                       CoustomButtonAppBar(
//                         onPressed: () {
//                           controller.changedpage(2);
//                         },
//                         iconButton: Icons.home,
//                         textButtoon: "Settings",
//                         active: controller.currentPage == 2 ? true : false,
//                       ),
//                       CoustomButtonAppBar(
//                         onPressed: () {
//                           controller.changedpage(3);
//                         },
//                         iconButton: Icons.home,
//                         textButtoon: "Home",
//                         active: controller.currentPage == 3 ? true : false,
//                       )
//                     ],
//                   )
