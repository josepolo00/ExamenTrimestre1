import 'package:flutter/material.dart';

class MonitoresScreen24 extends StatelessWidget {
   
  const MonitoresScreen24({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
              children: const [
          CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
           ),
           CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
           ),
           CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage('https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
           ),
           CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
           ),
        ],
        ),
      ),
    );
  }
}