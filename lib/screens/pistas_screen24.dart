import 'package:flutter/material.dart';
import 'package:examenjbp24/theme/app_theme24.dart';
import 'package:examenjbp24/widgets/widgets24.dart';

class PistasScreen24 extends StatelessWidget {
   
  const PistasScreen24({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        elevation: 0,
        actions: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),    
          ),
        )
      ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo2(nombre: 'Pista de padel', imagenUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg' , descripcion: 'Pista de padel profesional' ,),
          SizedBox(height: 10),
          CustomCardTipo2( nombre: 'Pista cubierta', imagenUrl: 'https://grupopineda.eu/wp-content/uploads/2020/09/cuanto-cuesta-pabellon-deportivo.jpg' , descripcion: 'Pista cubierta profesional de la mejor calidad' , ),
          SizedBox(height: 10),
          CustomCardTipo2( nombre: 'Campo de baloncesto', imagenUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg' , descripcion: 'Pista de baloncesto con las mejores canastas' ,),
          SizedBox(height: 10),
          CustomCardTipo2( nombre: 'Campo de futbol', imagenUrl: 'https://www.acadef.es/wp-content/uploads/2021/09/Santiago-Bernabeu-1080x675.jpg' , descripcion: 'Pista de futbol 11 con cesped natural' ,),
          SizedBox(height: 10),
        ],
      )
    );
  }
}