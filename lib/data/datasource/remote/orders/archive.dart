import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class OrdersArchive {
  Crud crud = Crud();
  OrdersArchive(this.crud);

  getDataArchive({required String deliveryid}) async {
    var responce = await crud
        .postdata(AppLink.linkorderdArchive, {"deliveryid": deliveryid});
    return responce.fold((l) => l, (r) => r);
  }
}
