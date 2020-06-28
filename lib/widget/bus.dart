import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Bus extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(27.6709965, 85.4391142);
  final Marker marker = Marker(
    position: LatLng(27.6709965, 85.4391142),
    onTap: () {},
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 40.0,
          ),
          // markers: Set<Marker>.of(marker.values),
        ),
      ),
    );
  }
}
