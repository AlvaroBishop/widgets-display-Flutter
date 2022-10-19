import 'package:flutter/material.dart';
import 'package:widgets_showdown/router/app_routes.dart';
import 'package:widgets_showdown/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated( 
        itemBuilder: ( context, index ) => ListTile(
          leading:  Icon( menuOptions[index].icon ),
          title:  Text( menuOptions[index].name ) ,
          onTap: () {
            // rutas con el Material Page Route
            // final route = MaterialPageRoute(builder: ((context) => const ListView1Screen()));
            // Navigator.push(context, route);
            // Navigator.pushReplacement(context, route);// reemplaza la pgania actual sin poder ir atras

            // rutas con nombre 
            String route = menuOptions[index].route;
            ( route == AppRoutes.initialRoute) ? Navigator.pushReplacementNamed(context, route)  : Navigator.pushNamed(context, route );
            
            // Navigator.pushReplacementNamed(context, 'listview1');
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: menuOptions.length,
      )
    );
  }
}
