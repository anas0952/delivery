// import 'dart:convert';

// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;

// Set<Polyline> polylineSet = {};
// List<LatLng> polylineco = [];
// PolylinePoints polylinePoints = PolylinePoints();

// Future<void> getpolyline(lat, long, destlat, destlong) async {
//   String url =
//       "https://maps.googleapis.com/maps/api/directions/json?origin=$lat,$long&destination=$destlat,$destlong&key=AIzaSyBlg0AoRES--dsrGhSlMgnexnaNzV_L0RE";
//   var responce = await http.post(Uri.parse(url));

//   var responcebody = jsonDecode(responce.body); 

//   var point = responcebody['routes'][0]
// }
