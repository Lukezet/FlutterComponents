
import 'package:flutter/material.dart';

import 'package:flutter_components1/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute='Home'; 

  static final menuOptions = <MenuOptions>[
    //TODO :Borrar Home
    //MenuOptions(route: 'Home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOptions(route: 'listview1', name: 'Listview 1', screen: const ListView1(), icon: Icons.list_alt_outlined),
    MenuOptions(route: 'listview2', name: 'Listview 2', screen: const ListView2(), icon: Icons.list_sharp),
    MenuOptions(route: 'alert', name: 'Alerts - Alertas', screen:  const AlertScreen(), icon: Icons.warning_amber_outlined),
    MenuOptions(route: 'card', name: 'Cards - Tarjeta', screen: const CardScreen(), icon: Icons.card_membership_outlined),
    MenuOptions(route: 'avatar', name: 'Avatar Circle', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOptions(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
    MenuOptions(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOptions(route: 'slider', name: 'Sliders & Checks', screen: const SliderScreen(), icon: Icons.storm_outlined),
    MenuOptions(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to Refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined), 
  ];
  
  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'Home': ( BuildContext context ) => const HomeScreen() });
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: ( BuildContext context ) => option.screen });
      
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes ={
  //       'Home'     : ( BuildContext context ) => const HomeScreen(),
  //       'listview1': ( BuildContext context ) => const ListView1(),
  //       'listview2': ( BuildContext context ) => const ListView2(),
  //       'alert'    : ( BuildContext context ) => const AlertScreen(),
  //       'card'     : ( BuildContext context ) => const CardScreen()
  //       };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return  MaterialPageRoute(
          builder: (context) => const CardScreen());
  }
}