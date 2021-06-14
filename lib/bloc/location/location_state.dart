part of 'location_bloc.dart';

@immutable
class LocationState {
  final String urlImage;
  final String title;
  final String description;
  final String schedule;
  final String number;
  final LatLng  location;



  LocationState({
  this.urlImage = 'Empty',
  this.title= 'Empty',
  this.description= 'Empty',
  
  this.schedule= 'Empty',
  this.number = 'Empty',
  this.location = const LatLng( 0 , 0 ),
  });
LocationState copyWith ({
  String urlImage,
  String title,
  String description,
  
  String schedule,
  String number,
  LatLng location,
}) => LocationState(
  urlImage         : urlImage         ?? this.urlImage,
  title       : title       ?? this.title,
  description : description ?? this.description,
  schedule    : schedule    ?? this.schedule,
  number      : number      ?? this.number,
  location    : location    ?? this.location
);



}

class LocationInitial extends LocationState {}
