import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  void requestRide() {
    print("تم طلب رحلة 🚗");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // خلفية تمثل الخريطة مؤقتًا
          Container(
            color: Colors.grey[300],
            child: Center(child: Text("🗺️ الخريطة هنا")),
          ),

          // زر الطلب
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: requestRide,
              child: Text("اطلب الآن 🚗"),
            ),
          ),
        ],
      ),
    );
  }
}
