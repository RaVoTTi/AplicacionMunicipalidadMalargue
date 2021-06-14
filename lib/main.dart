import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:municipalidad_de_malargue/bloc/location/location_bloc.dart';
import 'package:municipalidad_de_malargue/bloc/map/map_bloc.dart';

import 'package:municipalidad_de_malargue/screens/page_home.dart';
import 'package:municipalidad_de_malargue/screens/page_map.dart';

import 'bloc/my_ubication/my_ubication_bloc.dart';
// import 'package:municipalidad_de_malargue/widgets/widgets.dart';
// import 'package:municipalidad_de_malargue/screens/noticias.dart';
// import 'package:municipalidad_de_malargue/screens/servicios.dart';
// import 'package:municipalidad_de_malargue/screens/comunicados.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => MyUbicationBloc(),),
        BlocProvider(create: ( _ ) => LocationBloc(),),
        BlocProvider(create: ( _ ) => MapBloc(),),
        

],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'map': (_) => MapPage(),
          // 'servicios' : ( _ ) => Servicios(),
          // 'comunicados' : ( _ ) => Comunicados(),
          // 'noticias' : ( _ ) => RSSDemo(),
        },
      ),
    );
  }
}
