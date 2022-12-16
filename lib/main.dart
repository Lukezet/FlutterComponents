import 'package:flutter/material.dart';

import 'package:flutter_components1/routers/app_routes.dart';
import 'package:flutter_components1/themes/app_themes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListView2(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute:AppRoutes.onGenerateRoute,
      
      theme: AppTheme.lightTheme
    );
  }
}