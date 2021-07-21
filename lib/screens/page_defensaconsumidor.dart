import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/screens/page_noticias.dart';
import 'package:municipalidad_de_malargue/screens/page_servicios.dart';

import 'package:municipalidad_de_malargue/widgets/widgets.dart';

Map<String, String> _urls = {
  'formdefensaconsumidor':
      'https://docs.google.com/forms/d/1scsWmVjHVUKyKyLHTgpdzFhoVmtb0b-CMeAAI0BHcV8/edit?usp=sharing',
  'teldefensaconsumidor': '+5492604059263',
  'abrirurldefensa':
      'https://www.mendoza.gov.ar/prensa/defensa-del-consumidor-las-oficinas-municipales-prestan-un-servicio-esencial-para-los-ciudadanos/',
};

class DefensaConsumidorPage extends StatelessWidget {
  final double height;
  final double width;

  const DefensaConsumidorPage({@required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    final iconSize = height * 0.05;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Defensa Consumidor',
          style: TextStyle(
            color: Color(0xff000939d),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff00939d),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
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
                  function: () => openLink(_urls['abrirurldefensa']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/07/fbe5702e-77b4-4d9d-936f-c99da4f3fc62.jpg',
                ),
                CardCarousel(
                  function: () => openLink(_urls['abrirurldefensa']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/07/54ec35c0-0510-499a-b314-214196abd4c5.jpg',
                ),
                CardCarousel(
                  function: () => openLink(_urls['abrirurldefensa']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/07/b318c86f-d680-4e2a-877d-8eb323aebd43.jpg',
                ),
                CardCarousel(
                  function: () => openLink(_urls['abrirurldefensa']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/07/bb9a2a71-c2f6-470b-aef9-5359105b1415.jpg',
                ),
                CardCarousel(
                  function: () => openLink(_urls['abrirurldefensa']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/07/cf70ee4a-bd29-424b-b1a1-9ec1eae543ea.jpg',
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
          ],
        ),
      ),
    );
  }
}
