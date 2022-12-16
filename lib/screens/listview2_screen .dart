import 'package:flutter/material.dart';

import 'package:flutter_components1/themes/app_themes.dart';

class ListView2 extends StatelessWidget {
   
  final options = const["Hitman", "Fable","KingdomCome","Skyrim","The Witcher"];

  const ListView2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vista Lista"),
        elevation: 0,
        backgroundColor: AppTheme.primary,
      ),
      body:ListView.separated(
        itemCount: options.length,//tomamos el tamaño de la lista options
        itemBuilder: (context, i) => ListTile(//por cada uno de los items vamos generando de a uno la lista
          title: Text(options[i]), 
          trailing:const Icon(Icons.arrow_forward_ios_sharp, color:AppTheme.primary),
          onTap: () {
            final game = options[i];
            print(game);
          },),
          
        separatorBuilder: ( _ , __ ) => const Divider(),// ponemos un separador entre los textos
        )                     
      );
  }
}