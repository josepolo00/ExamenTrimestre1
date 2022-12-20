import 'package:flutter/material.dart';
import 'package:examenjbp24/router/app_routes24.dart';
import 'package:examenjbp24/screens/screens24.dart';
import 'package:examenjbp24/widgets/widgets24.dart';

class ListviewScreen24 extends StatelessWidget {

  void displayDialog(BuildContext context) {      // Alerta cuando pulsemos el boton
    showDialog(
      barrierDismissible: true,     // Permite cerrar el alertDialog clicando fuera de el
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Bienvenido'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Esta es la aplicacion del complejo deportivo Jose Polo'),
              SizedBox(height: 15),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Aceptar'),
            )
          ],
        );
      }
    );
  }
   
  const ListviewScreen24({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App'),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            
          ),
        )
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CustomCardTipo2(imagenUrl: 'https://i.pinimg.com/originals/27/d7/b1/27d7b1bf8b43592c844773069c3580fd.jpg'),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const ReservasScreen24());
                    Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                ),
                icon: const Icon(Icons.add),
                label:  const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Reservar una pista', style: TextStyle(fontSize: 20))),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const PistasScreen24());
                    Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                ),
                child:  const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Pistas', style: TextStyle(fontSize: 20))),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const MonitoresScreen24());
                    Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                ),
                child:  const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Monitores', style: TextStyle(fontSize: 20))),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => displayDialog(context),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                ),
                child:  const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Alertas', style: TextStyle(fontSize: 20))),
                ),
              ),
            ]
            
          ),
        ),
      )
    );
  }
}