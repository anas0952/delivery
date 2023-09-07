import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/orders/archivecontroller.dart';
import 'package:delivery/core/class/handlingdataview.dart';
import 'package:delivery/view/widget/order/cardarchiveorder.dart';

class OrdersArchiveScreen extends StatelessWidget {
  const OrdersArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersArchiveController());
    return Scaffold(
        body: Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            padding: const EdgeInsets.all(3),
            child: GetBuilder<OrdersArchiveController>(
                builder: ((controller) => HandlingDataView(
                    statusrequest: controller.statusrequest,
                    widget: ListView.builder(
                        itemCount: controller.data.length,
                        itemBuilder: (context, index) => (CardOrdersArchive(
                              listdata: controller.data[index],
                            ))))))));
  }
}
