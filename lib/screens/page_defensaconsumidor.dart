import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/screens/page_noticias.dart';
import 'package:municipalidad_de_malargue/screens/page_servicios.dart';

import 'package:municipalidad_de_malargue/widgets/widgets.dart';

Map<String, String> _urls = {
  'formdefensaconsumidor': 'https://infogov.com.ar/rentas/malargue/',
  'teldefensaconsumidor': 'https://infogov.com.ar/rentas/malargue/'
};

class DefensaConsumidorPage extends StatelessWidget {
  final double height;
  final double width;

  const DefensaConsumidorPage({@required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    final iconSize = height * 0.05;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Slider Principal//
          CarouselSlider(
            options: CarouselOptions(
              height: this.height * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              //AGREGAR IMAGENES AQUI DE DEFENSA AL CONSUMIDOR
              CardCarousel(
                function: () => openLink(_urls['']),
                urlImage:
                    'https://www.malargue.gov.ar/wp-content/uploads/2021/04/turismo.jpg',
              ),
              CardCarousel(
                function: () => openLink(_urls['']),
                urlImage:
                    'https://www.malargue.gov.ar/wp-content/uploads/2021/04/THESAURUS.jpg',
              ),
              CardCarousel(
                function: () => openLink(_urls['']),
                urlImage:
                    'https://www.malargue.gov.ar/wp-content/uploads/2021/04/terminal.jpg',
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BtnGenerico(
                function: () => openLink(_urls['formdefensaconsumidor']),
                name: ("Registrar denuncia"),
              ),
              BtnGenerico(
                function: () => openLink(_urls['teldefensaconsumidor']),
                name: ("Llamar"),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: this.height * 0.28,
              aspectRatio: 16 / 9,
              viewportFraction: 0.90,
              enableInfiniteScroll: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              CardCarousel(
                  function: () => openLink(_urls['chatBot']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/04/ezgif.com-gif-maker-1.gif'),
              // fit: BoxFit.cover,),
            ],
          ),
        ],
      ),
    );
  }
}

