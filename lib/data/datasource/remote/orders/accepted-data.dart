import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class OrderAcceptedData {
  Crud crud = Crud();
  OrderAcceptedData(this.crud);
  getDataAccepted({required String deliveryid}) async {
    var responce = await crud
        .postdata(AppLink.viewlinkorderaccpted, {"deliveryid": deliveryid});
    return responce.fold((l) => l, (r) => r);
  }

  getDatadeliverydone({
    required String ordersid,
    required String usersid,
    required String deliveryid,
  }) async {
    var responce = await crud.postdata(AppLink.linkordersdone,
        {"ordersid": ordersid, "usersid": usersid, "deliveryid": deliveryid});
    return responce.fold((l) => l, (r) => r);
  }
}
