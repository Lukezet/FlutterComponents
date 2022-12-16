

import 'package:flutter/material.dart' show IconData, Widget;//importamos especificamente IconData

class MenuOptions {

  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions({ //entre llaves para que cuando mandemos no importe el orden
    required this.route,
    required this.icon, 
    required this.name, 
    required this.screen
    });
}/*  * ?  sdsad
 */ 