import 'package:flutter/material.dart';
import 'package:examenjbp24/theme/app_theme24.dart';
import 'package:examenjbp24/widgets/widgets24.dart';



class ReservasScreen24 extends StatefulWidget {
   
  const ReservasScreen24({Key? key}) : super(key: key);

  @override
  State<ReservasScreen24> createState() => _ReservasScreen24State();
}

class _ReservasScreen24State extends State<ReservasScreen24> {
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
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          children: const [
            CustomCardTipo1(hora: '9:00', nombre: 'PADEL',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '10:00', nombre: 'PISCINA CUBIERTA',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '11:00', nombre: 'BALONCESTO',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '12:00', nombre: 'FUTBOL',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '13:00', nombre: 'TENIS',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '17:00', nombre: 'GIMNASIO',),
            SizedBox(height: 10),
            CustomCardTipo1(hora: '18:00', nombre: 'TENIS',),
            
          ],
        ),
      )
    );
  }
}

class RaisedButton {
}