import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class OrdersDetailsData {
  Crud crud = Crud();
  OrdersDetailsData(this.crud);
  getData({required String ordersid}) async {
    var responce = await crud
        .postdata(AppLink.viewlinkordersdetails, {"ordersid": ordersid});
    return responce.fold((l) => l, (r) => r);
  }
}
