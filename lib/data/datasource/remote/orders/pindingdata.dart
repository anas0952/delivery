import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class PindingData {
  Crud crud = Crud();
  PindingData(this.crud);

  getDataPinding() async {
    var responce = await crud.postdata(AppLink.viewlinkorderpinding, {});
    return responce.fold((l) => l, (r) => r);
  }

  getDataapprove(
      {required String ordersid,
      required String usersid,
      required String deliveryid}) async {
    var responce = await crud.postdata(AppLink.linkordersapprove,
        {"ordersid": ordersid, "usersid": usersid, "deliveryid": deliveryid});
    return responce.fold((l) => l, (r) => r);
  }
}
