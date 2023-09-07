import 'dart:async';
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingController extends GetxController {
  StreamSubscription<Position>? positionStream;

  OrdersModel? ordersModel;

  CameraPosition? cameraPosition;

  List<Marker> makers = [];

  Statusrequest statusrequest = Statusrequest.none;

  GoogleMapController? gmc;

  double? distlate;
  double? distlong;

  double? currentlate;
  double? currentlong;

  getCurrentPositition() {
    cameraPosition = CameraPosition(
      target: LatLng(double.parse(ordersModel!.addressLat!),
          double.parse(ordersModel!.addressLong!)),
      zoom: 18.4746,
    );

    makers.add(Marker(
        markerId: const MarkerId("dest"),
        position: LatLng(double.parse(ordersModel!.addressLat!),
            double.parse(ordersModel!.addressLong!))));

    positionStream =
        Geolocator.getPositionStream().listen((Position? position) {
      print("====================");
      currentlate = position!.latitude;
      currentlong = position.longitude;
      print("Lattiude  :  ${position.latitude}");
      print("Lattiude  :  ${position.longitude}");

      if (gmc != null) {
        gmc!.animateCamera(
            CameraUpdate.newLatLng(LatLng(currentlate!, currentlong!)));
      }

      makers.removeWhere((element) => element.markerId.value == "current");

      makers.add(Marker(
          markerId: const MarkerId("current"),
          position: LatLng(position.latitude, position.longitude)));
      update();
    });
  }

  //map
  // Position? position;

  // double? lat;
  // double? long;

  //map

  // initaldata() {
  //   ordersModel = Get.arguments['ordersmodel'];
  //   if (ordersModel.ordersType == "0") {
  //     lat = double.parse(ordersModel.addressLat!);
  //     long = double.parse(ordersModel.addressLong!);
  //     cameraPosition = CameraPosition(
  //       target: LatLng(lat!, long!),
  //       zoom: 18.4746,
  //     );
  //     completercontroller = Completer<GoogleMapController>();
  //     makers.add(
  //         Marker(markerId: const MarkerId("1"), position: LatLng(lat!, long!)));
  //   }
  // }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    getCurrentPositition();
    super.onInit();
  }
}
