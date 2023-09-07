import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class NotificationData {
  Crud crud = Crud();
  NotificationData(this.crud);
  getDataNotify({required String usersid}) async {
    var responce =
        await crud.postdata(AppLink.linknotification, {"usersid": usersid});
    return responce.fold((l) => l, (r) => r);
  }
}
