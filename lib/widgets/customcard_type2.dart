import 'package:flutter/material.dart';


class CustomCard_type2 extends StatelessWidget {

  final String imageURL;//CREAMOS LA VARIABLE QUE VA A RECIBIR LA IMAGEN

  final String? nameCard;

  const CustomCard_type2({ 
    super.key, 
    required this.imageURL, 
    this.nameCard //ENVIAR LA IMAGEN ES OBLIGATORIO
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 20,
      shadowColor: Colors.indigoAccent.withOpacity(0.5),
      child: Column(
        children: [

          // Image(//PARA IMAGENES!! SOLO IMAGENES
          //   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'))
          FadeInImage(
            image:NetworkImage( imageURL ),// PONEMOS LA IMAGEN AQUI!!!
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover),
            
        if (nameCard!=null)  //si no envio el nombre esta parte de la tarjeta no se creara!
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
            child: Text(nameCard!)//el ! al final hace referencia a que flutter confie en nosotros
            //child: Text(nameCard ?? 'Beautiful open field')  //Si no envio nombre tendra este por defecto
          )
        ],
      )
    );
  }
}