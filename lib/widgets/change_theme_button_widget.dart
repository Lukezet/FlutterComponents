import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_components1/themes/app_themes.dart';
import 'package:flutter_components1/themes/theme_provider.dart';


class ChangeThemeButtonWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final themeProvider=Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      activeColor:Colors.indigoAccent.shade400,
      value: themeProvider.isDarkMode,
      onChanged: (value){
        final provider=Provider.of<ThemeProvider>(context,listen: false );
        provider.toogleTheme(value);

    });
  }
}