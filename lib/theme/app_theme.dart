

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

        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: primary)),


      );
}