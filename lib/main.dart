import 'package:flutter/material.dart';
import 'package:examenjbp24/router/app_routes24.dart';
import 'package:examenjbp24/screens/screens24.dart';
import 'package:examenjbp24/theme/app_theme24.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,              
      title: 'josebp',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}