import 'package:flutter/material.dart';
import 'package:widgets_showdown/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'listview1',
        name: 'Listview tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'listview2',
        name: 'Listview tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded),
    MenuOptions(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.credit_card_rounded),
    MenuOptions(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outlined),
    MenuOptions(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_outlined),
    MenuOptions(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.photo_size_select_small_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
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
