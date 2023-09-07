import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/core/constant/routes.dart';
import 'package:delivery/core/functions/handlingdata_controller.dart';
import 'package:delivery/core/services/services.dart';
import 'package:delivery/data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  showpassword();
  login();
  gotoForgetPassword();
  gosignUp();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  bool showpass = true;

  MyServices myServices = Get.find();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  Statusrequest statusrequest = Statusrequest.none;

  @override
  showpassword() {
    showpass = showpass == true ? false : true;
    update();
  }

  @override
  gosignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusrequest = Statusrequest.lodaing;
      update();
      var responce = await loginData.postData(email.text, password.text);
      statusrequest = hanglingdata(responce);
      print(responce);
      if (Statusrequest.success == statusrequest) {
        if (responce['status'] == "success") {
          if (responce['data']['delivery_approve'] == "1") {
            myServices.sharedpref
                .setString("id", responce['data']['delivery_id']);
            myServices.sharedpref
                .setString("username", responce['data']['delivery_name']);
            myServices.sharedpref
                .setString("email", responce['data']['delivery_email']);
            myServices.sharedpref
                .setString("phone", responce['data']['delivery_phone']);
            myServices.sharedpref.setString("step", "2");
            String delivery = myServices.sharedpref.getString("id")!;
            Get.toNamed(AppRoute.homepage);

            FirebaseMessaging.instance.subscribeToTopic("delivery");
            FirebaseMessaging.instance.subscribeToTopic("delivery$delivery");
          } else {
            Get.toNamed(AppRoute.verficodeSignUp,
                arguments: {"email": email.text});
          }
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: "Email Or password Not Correct");
          statusrequest = Statusrequest.failure;
        }
      }
      update();
    }
  }

  @override
  gotoForgetPassword() {
    Get.offNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
