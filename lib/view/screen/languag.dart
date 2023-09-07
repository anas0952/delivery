import 'package:delivery/view/widget/language/coustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/core/constant/routes.dart';
import 'package:delivery/core/localization/changelocale.dart';

class Language extends GetView<Localcontroler> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CoustomButtonLang(
              textbutton: "Arabic",
              onPressed: () {
                controller.cahngeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CoustomButtonLang(
              textbutton: "English",
              onPressed: () {
                controller.cahngeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            )
          ],
        ),
      ),
    );
  }
}
