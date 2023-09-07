import 'package:delivery/controller/orders/dataaccepted-controller.dart';
import 'package:delivery/view/widget/order/cardacceptorderdone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/core/class/handlingdataview.dart';

class OrdersAccepted extends StatelessWidget {
  const OrdersAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderAcceptedController());
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        padding: const EdgeInsets.all(3),
        child: GetBuilder<OrderAcceptedController>(
            builder: ((controller) => HandlingDataView(
                statusrequest: controller.statusrequest,
                widget: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) => (CardAcceptedOrder(
                        listdata: controller.data[index])))))));
  }
}
