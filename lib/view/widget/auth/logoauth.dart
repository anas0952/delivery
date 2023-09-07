import 'package:flutter/material.dart';
import 'package:delivery/core/constant/imageAsset.dart';
import 'package:lottie/lottie.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AppimageAsset.delevirycar,
      height: 200,
    );
  }
}
