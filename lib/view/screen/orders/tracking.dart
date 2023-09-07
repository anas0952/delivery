import 'package:delivery/controller/orders/traking-controller.dart';
import 'package:delivery/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingMap extends StatelessWidget {
  const TrackingMap({super.key});

  @override
  Widget build(BuildContext context) {
    TrackingController controller = Get.put(TrackingController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders Location'),
        ),
        body: Container(
            child: GetBuilder<TrackingController>(
                builder: (controller) => HandlingDataView(
                    statusrequest: controller.statusrequest,
                    widget: Column(
                      children: [
                        Expanded(
                          child: GoogleMap(
                            markers: controller.makers.toSet(),
                            mapType: MapType.normal,
                            initialCameraPosition: controller.cameraPosition!,
                            onMapCreated: (GoogleMapController controllermap) {
                              controller.gmc = controllermap;
                            },
                          ),
                        ),
                      ],
                    )))));
  }
}
