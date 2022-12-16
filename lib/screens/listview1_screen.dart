import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
   
  final options = const["Hitman", "Fable","KingdomCome","Skyrim","The Witcher"];

  const ListView1({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vista Lista"),
      ),
      body:ListView(
        children: [

          ...options.map((game) => ListTile(
            title: Text(game),
            trailing:const Icon(Icons.arrow_forward_ios_sharp))).toList()


          // ListTile(
          //   leading:Icon(Icons.access_alarm_sharp),
          //   title: Text("First Time training"),

          
        ],
      )
      );
  }
}