import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:municipalidad_de_malargue/bloc/location/location_bloc.dart';
import 'package:municipalidad_de_malargue/bloc/map/map_bloc.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
  final mapBloc = BlocProvider.of<MapBloc>(context);
    final locationState = BlocProvider.of<LocationBloc>(context).state;
    print(locationState.title);
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(21, 23), zoom: 10),
        zoomControlsEnabled: false,
        buildingsEnabled: false,
        onMapCreated: mapBloc.initMap,
      ),
    );
  }
}
