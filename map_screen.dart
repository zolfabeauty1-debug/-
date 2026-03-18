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
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: requestRide,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.black,
              ),
              child: Text(
                "اطلب الآن 🚗",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
