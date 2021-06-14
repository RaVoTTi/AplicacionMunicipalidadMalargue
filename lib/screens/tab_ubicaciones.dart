import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:municipalidad_de_malargue/bloc/location/location_bloc.dart';
import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/screens/page_loading.dart';

// import 'package:municipalidad_de_malargue/widgets/widgets.dart';

class TabUbicaciones extends StatelessWidget {
  final double height;

  TabUbicaciones({this.height});
  final List<Map<String, String>> products = [
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/04/malargue-municipalidad-1.jpg',
      'title': 'Municipalidad de Malargüe',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604471060',
      'latitude': '20', 
      'longitude':'21'
    },
          
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/11/6ccf4dc0-d57c-4e45-90c0-f6b579773729.jpg',
      'title': 'Desarrollo Social',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604471541',
      'latitude': '20', 
      'longitude':'21'
    },
    {
      'url':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/12/119906822_3292286270824368_1875384053163340481_n.jpg',
      'title': 'Turismo',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604470096',
      'latitude': '21', 
      'longitude':'20'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final json = products[index];
            // print(json['title']);
            return ListTile(
                isThreeLine: true,
                title: Text(
                  json['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Horarios de Atención: " + json['schedule'],
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                minLeadingWidth: 50,
                trailing: IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () => openLink(json['number']),
                ),
                onTap: () {
                  final locationBloc = BlocProvider.of<LocationBloc>(context);
                  final double latitude = double.parse(json['latitude']);
                  final double longitude = double.parse(json['longitude']);

                  locationBloc.add(OnLocationChange(
                      urlImage: json['url'],
                      title: json['title'],
                      description: json['description'],
                      schedule: json['schedule'],
                      number: json['number'],
                      location: LatLng( latitude, longitude)
                      ));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoadingPage()),
                  );
                });
          }
    );
  }
}
