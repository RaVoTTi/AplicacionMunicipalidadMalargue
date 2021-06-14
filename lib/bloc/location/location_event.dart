part of 'location_bloc.dart';

@immutable
abstract class LocationEvent {}

class OnLocationChange extends LocationEvent{
  final String urlImage;
  final String title;
  final String schedule;
  final String description;
  final String number;
  final LatLng location;


   OnLocationChange({
  this.urlImage,
  this.title,
  this.schedule,
  this.description,
  this.number,
  this.location
  });
}