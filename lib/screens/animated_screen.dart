import 'dart:math' show Random;

import 'package:flutter/material.dart';
import '../themes/themes.dart';


class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changedShape(){
     final random = Random();
     _width = random.nextInt(300).toDouble()+20;//podra ser como maximo de 300px
     _height = random.nextInt(300).toDouble()+20;//y como minimo de 50px
     _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
      );
     _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
     setState(() {
       
     });
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
         child: AnimatedContainer(
          curve: Curves.bounceOut,
          duration: const Duration(milliseconds:2000),
          width:_width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),          
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.polymer_sharp,size: 30,),
        backgroundColor:AppTheme.primary,
        onPressed:changedShape,
      ),
    );
  }
}