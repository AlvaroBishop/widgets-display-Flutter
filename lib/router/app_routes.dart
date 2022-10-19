import 'package:flutter/material.dart';
import 'package:widgets_showdown/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOptions>[

    MenuOptions(route: 'home',  name: 'home screen', screen: const HomeScreen(), icon: Icons.home_outlined,),
    MenuOptions(route: 'listview1', name: 'Listview tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'Listview tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOptions(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOptions(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card_rounded),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'     : (BuildContext context) => const HomeScreen(),
  //       'listview1': (BuildContext context) => const ListView1Screen(),
  //       'listview2': (BuildContext context) => const ListView2Screen(),
  //       'alert'    : (BuildContext context) => const AlertScreen(),
  //       'card'     : (BuildContext context) => const CardScreen(),
  //     };

      static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(builder: ((context) => const AlertScreen()));
      }
}