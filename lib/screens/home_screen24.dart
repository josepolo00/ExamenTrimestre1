import 'package:flutter/material.dart';
import 'package:examenjbp24/router/app_routes24.dart';
import 'package:examenjbp24/screens/screens24.dart';

class HomeScreen24 extends StatelessWidget {
   
  const HomeScreen24({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          const FlutterLogo(size: 400,),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(builder: (context) => const SigninScreen24());
                Navigator.pushReplacement(context, route);
              },
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sing in', style: TextStyle(fontSize: 20)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(builder: (context) => const SignupScreen24());
                Navigator.pushReplacement(context, route);
              },
              child: const Padding(
                padding: EdgeInsets.all(19.0),
                child: Text('Sign up', style: TextStyle(fontSize: 20)),
              ),
            ),
        ],
      ),
    );
  }
}