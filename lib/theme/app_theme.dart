

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,

        // Color AppBar
        appBarTheme: const AppBarTheme(
          color: primary,
          centerTitle: true,
          elevation: 0,
        ),

        // TextButton Theme
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: primary)),


        // FloatingActionsButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        ),

        // ElevatedButtons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle( color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
          )
        )

      );
}