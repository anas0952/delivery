import 'package:get/get.dart';
import 'package:delivery/core/constant/routes.dart';

abstract class SuccessSignUpControler extends GetxController {
  gotoPageLogin();
}

class SuccessSignUpControlerImp extends SuccessSignUpControler {
  @override
  gotoPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
