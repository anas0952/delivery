import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class VerfycodeSignupData {
  Crud crud;
  VerfycodeSignupData(this.crud);

  postdata(String email, String verfycode) async {
    var responce = await crud.postdata(AppLink.linkverfycode, {
      "email": email,
      "verfycode": verfycode,
    });
    return responce.fold((l) => l, (r) => r);
  }

  resenddata(String email) async {
    var responce = await crud.postdata(AppLink.linkresend, {"email": email});
    return responce.fold((l) => l, (r) => r);
  }
}
