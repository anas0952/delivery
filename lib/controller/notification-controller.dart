import 'package:get/get.dart';
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/core/functions/handlingdata_controller.dart';
import 'package:delivery/core/services/services.dart';
import 'package:delivery/data/datasource/remote/notificationdata.dart';

class NotificationController extends GetxController {
  NotificationData notificationData = NotificationData(Get.find());

  List data = [];

  Statusrequest statusrequest = Statusrequest.none;

  MyServices myServices = Get.find();

  getdata() async {
    statusrequest = Statusrequest.lodaing;
    update();
    var responce = await notificationData.getDataNotify(
        usersid: myServices.sharedpref.getString("id")!);
    statusrequest = hanglingdata(responce);
    print(responce);
    if (Statusrequest.success == statusrequest) {
      if (responce['status'] == "success") {
        data.addAll(responce['data']);
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
