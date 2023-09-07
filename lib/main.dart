import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery/binding/initialbinding.dart';
import 'package:delivery/core/localization/changelocale.dart';
import 'package:delivery/routes.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Localcontroler controler = Get.put(Localcontroler());

    return GetMaterialApp(
      initialBinding: InitalBinding(),
      locale: controler.Language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      theme: controler.appthem,
      // home: const Language(),
      // routes: routes,

      getPages: routes,
    );
  }
}




///AIzaSyDUye2pP9Z82xJ5cP6KbBY5jkLam8T7FPE