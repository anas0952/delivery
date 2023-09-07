import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  postData(String email) async {
    var responce = await crud.postdata(AppLink.linkcheckEmail, {
      "email": email,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
