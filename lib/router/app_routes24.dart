import 'package:flutter/material.dart';
import 'package:examenjbp24/models/models24.dart';
import 'package:examenjbp24/screens/screens24.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: const HomeScreen24()),
    MenuOption(route: 'sign', icon: Icons.home_max_sharp, name: 'Sign in', screen: const SigninScreen24()),
    MenuOption(route: 'signup', icon: Icons.home_max_sharp, name: 'Sign up', screen: const SignupScreen24()),
    MenuOption(route: 'list', icon: Icons.home_max_sharp, name: 'Listview', screen: const ListviewScreen24()),
    MenuOption(route: 'pistas', icon: Icons.home_max_sharp, name: 'Pistas', screen: const PistasScreen24()),
    MenuOption(route: 'monitores', icon: Icons.home_max_sharp, name: 'Monitores', screen: const MonitoresScreen24()),
    
       
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
    for (final option in MenuOptions) {

      appRoutes.addAll({option.route : (BuildContext context) => option.screen});

    }
    return appRoutes;
  }


  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const HomeScreen24()
          );
      }
}