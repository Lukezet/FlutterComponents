import 'package:flutter/material.dart';

import 'package:flutter_components1/models/models.dart';
import 'package:flutter_components1/routers/app_routes.dart';
import 'package:flutter_components1/themes/app_themes.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    final menuOptions = AppRoutes.menuOptions;//desde aqui llamamos al AppRoutes

    return    Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body:ListView.separated(
        itemBuilder:(context, index) => ListTile(
            leading: Icon(menuOptions[index].icon, color:AppTheme.primary),
            title: Text(menuOptions[index].name),
            onTap: () {
              
              // final route = MaterialPageRoute( // SI NAVIGATOR.PUSH()TENEMOS QUE HACER TODO ESO
              //   builder: (context) => const ListView2() //SI QUEREMOS UN ENRUTAMIENTO MAS ESPECIFICO EN DISEÑO
              //   );                                      //COMO TRANSICIONES

              Navigator.pushNamed(context,menuOptions[index].route );//pushReplacement para logins
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(),
            itemCount: menuOptions.length
            ),
    );
  }
}