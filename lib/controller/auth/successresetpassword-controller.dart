import 'package:get/get.dart';
import 'package:delivery/core/constant/routes.dart';

abstract class SuccessResetpasswordControler extends GetxController {
  gotoPageLogin();
}

class SuccessResetpasswordControlerImp extends SuccessResetpasswordControler {
  @override
  gotoPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
