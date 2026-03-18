import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.0444, 31.2357); // القاهرة

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void requestRide() {
    print("تم طلب رحلة 🚗");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // 🗺️ الخريطة
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 14.0,
            ),
            myLocationEnabled: true,
          ),

          // 🔘 زر الطلب
          ElevatedButton(
  onPressed: () {
    calculatePrice();
    setState(() {});
    print("تم طلب رحلة بالسعر $price");
  },
  child: Text("اطلب الآن 🚗"),
)

double price = 0;
void calculatePrice() {
  double distance = 5; // كم (مؤقت)
  double duration = 10; // دقائق (مؤقت)

  double baseFare = 10;
  double perKm = 3;
  double perMin = 0.5;

  price = baseFare + (distance * perKm) + (duration * perMin);
}
@override
void initState() {
  super.initState();
  calculatePrice();
}
