import 'package:flutter/material.dart';
import 'map_screen.dart';

void main() {
  runApp(MyApp());
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
