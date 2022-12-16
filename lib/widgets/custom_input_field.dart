import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
    
    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? suffixIcon;
    final IconData? icon;
    final TextInputType? emailKeyboard;
    final bool obscureText;

    final String formProperty;
    final Map<String,String> formValues;



  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.emailKeyboard, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: 'George R.R. Martin',
      keyboardType: emailKeyboard,// TECLADO P/ INGRESAR EMAILS
      obscureText: obscureText,
      textCapitalization: TextCapitalization.none,
      onChanged: ( value ) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        //prefixIcon:Icon(Icons.verified,size: 30,) 
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon,size:30),
        icon: icon == null ? null : Icon(icon,size:30),//si el icono es nulo, sera nullo sino sera lo que le enviemos
        //SECCION DISEÑO DE CAJA DE TEXTO (BORDES)
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only( 
        //       bottomLeft :Radius.circular(15.0),
        //       topRight: Radius.circular(15.0))
        //   )

         

      ),
    );
  }
}