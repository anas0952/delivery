import 'package:delivery/view/screen/orders/tracking.dart';
import 'package:get/get.dart';
import 'package:delivery/core/constant/routes.dart';
// import 'package:delivery/view/address/add.dart';
// import 'package:delivery/view/address/view.dart';
import 'package:delivery/view/screen/auth/Forgetpassword/Forgetpassowrd.dart';
import 'package:delivery/view/screen/auth/Forgetpassword/ResetPassword.dart';
import 'package:delivery/view/screen/auth/login.dart';
import 'package:delivery/view/screen/auth/signup.dart';
import 'package:delivery/view/screen/auth/successresetpass-word.dart';
import 'package:delivery/view/screen/auth/successsignup.dart';
import 'package:delivery/view/screen/auth/Forgetpassword/vireFycode.dart';
import 'package:delivery/view/screen/auth/verifiycodesignup.dart';
// import 'package:delivery/view/screen/checkout.dart';
// import 'package:delivery/view/screen/contactus.dart';
// import 'package:delivery/view/screen/myfavorite.dart';
import 'package:delivery/view/screen/homescree.dart';
// import 'package:delivery/view/screen/items.dart';
// import 'package:delivery/view/screen/itemsdetails.dart';
// import 'package:delivery/view/screen/onboarding.dart';
import 'package:delivery/view/screen/orders/archive.dart';
import 'package:delivery/view/screen/orders/details.dart';
import 'package:delivery/view/screen/orders/pinding.dart';

import 'middleware/mymiddleware.dart';

// import 'middleware/mymiddleware.dart';
// import 'view/address/adddetails.dart';
// import 'view/screen/cart.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: AppRoute.mycart, page: (() => const Mycart())),
  // //language

  //Language
  GetPage(name: "/", page: () => const Login(), middlewares: [Mymiddlware()]),
  //OnBoarding
  // GetPage(name: AppRoute.onBoarding, page: () => const OnBording()),
  //Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const Forgetpassowrd()),
  GetPage(name: AppRoute.verFiycode, page: () => const VeryFiCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccesssResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verficodeSignUp, page: () => const VeryFiCodeSignup()),
  //page
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  // GetPage(name: AppRoute.items, page: () => const Items()),
  // GetPage(name: AppRoute.itemsDetails, page: () => const ItemsDetails()),
  // //FavoriteScreen
  // GetPage(name: AppRoute.myFavorite, page: () => const MyFavorite()),
  // //cart
  // GetPage(name: AppRoute.mycart, page: () => const Mycart()),
  // GetPage(name: AppRoute.checkout, page: () => const CheckOut()),

  // //address
  // GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  // GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  // GetPage(
  //     name: AppRoute.addressaddDetails, page: () => const AddressAddDetails()),
  //orders
  GetPage(name: AppRoute.orderspinding, page: () => const OrdersPinding()),
  //details
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoute.trackingmap, page: () => const TrackingMap()),

  GetPage(
      name: AppRoute.ordersarchive, page: () => const OrdersArchiveScreen()),
  //contactus
  // GetPage(name: AppRoute.contactus, page: () => const ContactUs()),
];
