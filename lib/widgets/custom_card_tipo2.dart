import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imagenUrl;
  final String? nombre;
  final String? descripcion;


  const CustomCardTipo2({super.key, required this.imagenUrl, this.nombre, this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,       // Corta el contenido si se sale del card
      shape: RoundedRectangleBorder(      // Redondear las esquinas del card
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 5,
      child: Column(
        children:  [
          FadeInImage(
            image: NetworkImage(imagenUrl), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,   // Todo el ancho posible
            height: 260,
            fit:BoxFit.cover,         // Hace zoom a la imagen para dejar el tamaño indicado con el width y el height
          ),
          
          if (nombre != null)   // Si no tiene texto introducido que no cree el widget del texto
            ListTile(
              title: Text(nombre ?? 'Pista', style: const TextStyle(color: Colors.green)),
              subtitle: Text(descripcion ?? 'Descripcion') ,
              ),
        ],
      ),
    );
  }
}