import 'package:delivery/controller/orders/dataaccepted-controller.dart';
import 'package:delivery/core/constant/routes.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:delivery/core/constant/color.dart';

class CardAcceptedOrder extends GetView<OrderAcceptedController> {
  final OrdersModel listdata;

  const CardAcceptedOrder({
    super.key,
    required this.listdata,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${'111'.tr} ${listdata.ordersId}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  Jiffy.parse("${listdata.ordersDatetime}").fromNow(),
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.primarycolor),
                )
              ],
            ),
            const Divider(),
            // Text(
            //     "${'102'.tr}  : ${controller.printOrderType(listdata.ordersType!)}"),
            Text("${'103'.tr}  : ${listdata.ordersPrice} \$"),
            Text("${'104'.tr}  : ${listdata.ordersPricedelivery} \$"),
            Text(
                "${'105'.tr}  : ${controller.printpaymentMethod(listdata.ordersPaymentmethod!)}"),
            // Text(
            //     "${'112'.tr}  : ${controller.printOrderstatus(listdata.ordersStatus!)}"),
            const Divider(),
            Row(
              children: [
                Text(
                  "${'106'.tr}  : ${listdata.ordersTotalprice} \$",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent),
                ),
                const Spacer(),
                if (listdata.ordersStatus == "2")
                  MaterialButton(
                    padding: const EdgeInsets.all(7),
                    color: Colors.deepPurpleAccent,
                    onPressed: () {
                      Get.toNamed(AppRoute.ordersdetails,
                          arguments: {"ordersmodel": listdata});
                    },
                    child: Text(
                      '101'.tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
