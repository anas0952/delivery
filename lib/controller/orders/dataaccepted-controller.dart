import 'package:delivery/data/datasource/remote/orders/accepted-data.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:get/get.dart';
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/core/functions/handlingdata_controller.dart';
import 'package:delivery/core/services/services.dart';

class OrderAcceptedController extends GetxController {
  late Statusrequest statusrequest;

  List<OrdersModel> data = [];
  OrderAcceptedData pindingData = OrderAcceptedData(Get.find());

  MyServices myServices = Get.find();

  getItemsAccepted() async {
    data.clear();
    statusrequest = Statusrequest.lodaing;
    update();
    var responce = await pindingData.getDataAccepted(
        deliveryid: myServices.sharedpref.getString("id")!);
    print('=============================$responce');
    statusrequest = hanglingdata(responce);
    print(responce);
    if (Statusrequest.success == statusrequest) {
      if (responce['status'] == "success") {
        List listdata = responce['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
  }

  ///////////////////////////
  getItemsAcceptedDone(String orderid, String usersid) async {
    data.clear();
    statusrequest = Statusrequest.lodaing;
    update();
    var responce = await pindingData.getDatadeliverydone(
        ordersid: orderid,
        usersid: usersid,
        deliveryid: myServices.sharedpref.getString("id")!);
    print('=============================$responce');
    statusrequest = hanglingdata(responce);
    print(responce);
    if (Statusrequest.success == statusrequest) {
      if (responce['status'] == "success") {
        getItemsAccepted();
        // List listdata = responce['data'];
        // data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
  }

  //////////////////////
  String printOrderType(String val) {
    if (val == "0") {
      return "100a".tr;
    } else {
      return "100".tr;
    }
  }

  String printpaymentMethod(String val) {
    if (val == "0") {
      return "105a".tr;
    } else {
      return "105aa".tr;
    }
  }

  String printOrderstatus(String val) {
    if (val == "0") {
      return "107".tr;
    } else if (val == "1") {
      return "108".tr;
    } else if (val == "2") {
      return "109".tr;
    } else {
      return "110".tr;
    }
  }

  //refreash page
  refreashorderpinding() {
    getItemsAccepted();
  }

  @override
  void onInit() {
    getItemsAccepted();
    super.onInit();
  }
}
