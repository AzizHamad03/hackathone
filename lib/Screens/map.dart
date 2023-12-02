import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tournament/Models/place.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    this.location = const PlaceLocation(
      latitude: 26.307214717673606,
      longitude: 50.14601138101729,
      address: 'address',
    ),
    this.isSellecting = true,
  });
  final PlaceLocation location;
  final bool isSellecting;

  @override
  State<MapScreen> createState() {
    return _MapScreen();
  }
}

class _MapScreen extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.isSellecting ? 'Pick your location' : 'your location'),
        actions: [
          if (widget.isSellecting)
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {},
            ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.location.latitude, widget.location.longitude),
            zoom: 15),
            markers: {
              Marker(
                markerId: const MarkerId('m1'),
                position: LatLng(widget.location.latitude, widget.location.longitude),
                ),
            },
      ),
    );
  }
}