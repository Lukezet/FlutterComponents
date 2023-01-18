

import 'package:flutter/material.dart';

class AppTheme {
    //definimos el primary color
    static const Color primary = Colors.indigoAccent;
    static const Color secondary= Colors.indigo;

    static final ThemeData lightTheme = ThemeData.light().copyWith(
        
        //Color Primario
        primaryColor:primary,
      
        
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color:primary,
          elevation: 0
          ),
       
        //Text Button Theme  
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.red)
          ),

        //Floating Button  
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 8
        ),

        //ElevatedButtons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation:0
          ),
        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only( 
              bottomLeft :Radius.circular(15.0), topRight: Radius.circular(15.0))
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only( 
              bottomLeft :Radius.circular(20.0), topRight: Radius.circular(20.0))
          ),
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft :Radius.circular(20.0), topRight: Radius.circular(20.0))
          )
        )

      );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor:primary,
        
        appBarTheme: const AppBarTheme(
          color:primary,
          elevation: 5
          ),
        scaffoldBackgroundColor: Colors.black
      );

}