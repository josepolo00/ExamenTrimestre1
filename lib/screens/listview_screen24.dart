import 'package:flutter/material.dart';
import 'package:examenjbp24/router/app_routes24.dart';
import 'package:examenjbp24/screens/screens24.dart';
import 'package:examenjbp24/widgets/widgets24.dart';

class ListviewScreen24 extends StatelessWidget {

  final options = const['Pistas', 'Monitores', 'Reservas'];
   
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
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
             trailing: Icon(Icons.arrow_forward_ios_outlined),
             title: Text(options[index]),
             onTap: () {
               final ventana = options[index];
               final route = MaterialPageRoute(builder: (context) => const MonitoresScreen24());
               Navigator.pushReplacement(context, route);
               
             },
           ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      )
    );
  }
}