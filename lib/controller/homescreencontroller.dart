import 'package:delivery/view/screen/orders/accepted.dart';
import 'package:delivery/view/screen/orders/archive.dart';
import 'package:delivery/view/screen/orders/pinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:delivery/view/screen/notificatoin.dart';
// import 'package:delivery/view/screen/offerse.dart';
// import 'package:delivery/view/screen/settings.dart';

abstract class HomeScreenController extends GetxController {
  changedpage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;

  List<Widget> listpage = [
    const OrdersPinding(),
    const OrdersAccepted(),
    const OrdersArchiveScreen()
  ];

  List botomappbar = [
    {"title": "Pinding", "icon": Icons.delivery_dining_sharp},
    {"title": "Accepted", "icon": Icons.content_paste_go_outlined},
    {"title": "Archive", "icon": Icons.archive_outlined}
  ];

  @override
  changedpage(int i) {
    currentPage = i;
    update();
  }
}
