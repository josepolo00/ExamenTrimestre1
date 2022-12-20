import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        
    // Color primario
    primaryColor: Colors.green,
        
    // App Theme
    appBarTheme: const AppBarTheme(
      color: Colors.green,
      elevation: 0,
    ),

    // Icons Theme
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.green,
    ),

    // Text Buttom Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.green),
    ),

    // FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // Elevated Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),   // Redondeamos los bordes del boton
        elevation: 5,
      )
    ),

    // Input Form Decoration
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
    ),
  );
}