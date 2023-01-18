import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.dark;
  
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

  }
}


class MyThemes{
  
  
  static final darkTheme = ThemeData(                               //! DARK THEME here
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.indigoAccent)
          ),
  );

  static final lightTheme = ThemeData(                              //? LIGHT THEME here
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
  );
}