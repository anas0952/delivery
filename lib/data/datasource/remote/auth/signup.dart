import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);

  postdata(String username, String email, String password, String phone) async {
    var responce = await crud.postdata(AppLink.linkSignUp, {
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
