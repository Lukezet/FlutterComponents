import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  
  void displayDialogIOS( BuildContext context ){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ){
        return CupertinoAlertDialog(
          title: Text('Apple by Flutter'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Eu dolore officia non nostrud id. Id nisi tempor sunt ad fugiat qui et nostrud pariatur sit Lorem proident. Ullamco ex aliquip deserunt elit incididunt reprehenderit enim officia cillum ex consequat enim consectetur. Labore ipsum id eiusmod proident enim ipsum nulla officia duis enim nostrud veniam officia eu. Esse do ullamco sit ut officia ea.',selectionColor: Colors.white,),
              SizedBox( height: 10,),
              FlutterLogo(size: 40,)

            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancel',style:TextStyle( color:Color.fromARGB(255, 231, 108, 99),))),
            
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Ok'))

          ],
          
        );
      }
    );
  }

  void displayDialogAndroid( BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
          elevation: 15,
          title: const Text('Flutter by Google',textAlign: TextAlign.center,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Eu dolore officia non nostrud id. Id nisi tempor sunt ad fugiat qui et nostrud pariatur sit Lorem proident. Ullamco ex aliquip deserunt elit incididunt reprehenderit enim officia cillum ex consequat enim consectetur. Labore ipsum id eiusmod proident enim ipsum nulla officia duis enim nostrud veniam officia eu. Esse do ullamco sit ut officia ea.',selectionColor: Colors.white,),
              SizedBox( height: 10,),
              FlutterLogo(size: 40,)

            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancel',style:TextStyle( color:Color.fromARGB(255, 231, 108, 99),))),
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Ok'))

          ],
        );
      }
      
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child:ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.indigoAccent,
          //   shape: const StadiumBorder(),
          //   elevation:0 
          // ),  
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical:15),
            child: Text('Mostrar alerta',style: TextStyle(fontSize: 20),),
          ),
          //onPressed: ()=> displayDialogAndroid( context )
          onPressed: ()=> Platform.isAndroid  //MOSTRAMOS SEGUN EL SIS OPERATIVO
           ? displayDialogAndroid( context )
           : displayDialogIOS( context )
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.close_sharp),
        onPressed: ()=>Navigator.pop(context)
        ),
        );
  }
}