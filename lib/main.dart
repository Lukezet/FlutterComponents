import 'package:flutter/material.dart';

import 'package:flutter_components1/routers/app_routes.dart';
import 'package:flutter_components1/themes/app_themes.dart';
import 'package:provider/provider.dart';

import 'themes/theme_provider.dart';


void main() => runApp( MyApp());


ThemeData actualTheme = AppTheme.lightTheme;
bool switchTheme = false;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=>ThemeProvider(),
    builder: (context, _ ){
      final themeProvider=Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: const ListView2(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute:AppRoutes.onGenerateRoute,
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        //theme: AppTheme.lightTheme,
      );
    }
  );
}
