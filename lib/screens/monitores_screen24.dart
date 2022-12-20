import 'package:flutter/material.dart';

class MonitoresScreen24 extends StatelessWidget {
   
  const MonitoresScreen24({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
             ),
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 30, right: 20),
              child: const Text('Rafa Nadal')
             ),
             const CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
             ),
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 30, right: 20),
              child: const Text('Gisela Pulido')
             ),
             const CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
             ),
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 30, right: 20),
              child: const Text('Raúl González')
             ),
             const CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
             ),
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 40, right: 20),
              child: const Text('Mireia Belmonte')
             ),
          ],
          ),
        ),
      ),
    );
  }
}