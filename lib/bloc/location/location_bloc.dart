import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial());

  @override
  Stream<LocationState> mapEventToState(LocationEvent event,) async* {
        if (event is OnLocationChange){
      // print(event);
      yield state.copyWith(
        urlImage         : event.urlImage,
        title       : event.title,
        description : event.description,
        number      : event.number,
        location   : event.location,
      );


    }
  }
}
