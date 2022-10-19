import 'package:flutter/material.dart';
import 'package:widgets_showdown/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,

        // Color AppBar
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          centerTitle: true,
          elevation: 0,
        )

      ),
    );
  }
}
