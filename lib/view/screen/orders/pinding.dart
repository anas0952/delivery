import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/controller/orders/pindingcontroller.dart';
import 'package:delivery/core/class/handlingdataview.dart';
import 'package:delivery/view/widget/order/cardpindingorder.dart';

class OrdersPinding extends StatelessWidget {
  const OrdersPinding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderPindingController());
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        padding: const EdgeInsets.all(3),
        child: GetBuilder<OrderPindingController>(
            builder: ((controller) => HandlingDataView(
                statusrequest: controller.statusrequest,
                widget: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) => (CardpindingOrder(
                          listdata: controller.data[index],
                        )))))));
  }
}
