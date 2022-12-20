import 'package:flutter/material.dart';
import 'package:examenjbp24/theme/app_theme24.dart';

class CustomCardTipo1 extends StatefulWidget {
  
  final String hora;
  final String nombre;
  

  const CustomCardTipo1({
    Key? key, required this.hora, required this.nombre,
  }) : super(key: key);

  @override
  State<CustomCardTipo1> createState() => _CustomCardTipo1State();
}

class _CustomCardTipo1State extends State<CustomCardTipo1> {
  
  String _nombreBoton = 'Reservar';

  void _cambiaNombre() {
    setState(() {
      if (_nombreBoton == 'Reservar'){
        _nombreBoton = 'Cancelar reserva';
      } else {
        _nombreBoton = 'Reservar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Column(
        children:  [
           ExpansionTile(
      leading: Text(widget.hora),
      title: Text(widget.nombre),

      children: <Widget>[
         Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const SizedBox(height: 5),
                const Icon(Icons.access_alarm),
                const SizedBox(height: 5),
                const Text('Duracion: 1h 30 min'),
                const SizedBox(height: 5),
                ElevatedButton(
                    onPressed: _cambiaNombre,
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 5,
                  ),
                    child:  SizedBox(
                      width: 245,
                      child: Center(child: Text(_nombreBoton, style: const TextStyle(fontSize: 20))),
                    ),
                  ),
          ],
              ),
            ),
          ),
      ],
    ),

        ]
        ),
    );
  }
}