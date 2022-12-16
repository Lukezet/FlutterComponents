import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<FormState> myFormKey= GlobalKey<FormState>();

    final Map<String,String> formValues={
      'first_Name': 'Lucas',
      'last_Name' : 'Yañez',
      'email'     : 'lucas@gmail.com',
      'password'  : '123456',
      'role'      :  'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs Field"),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField( labelText: 'User Name', hintText: 'ingrese su nombre de Usuario', helperText: 'solo letras y numeros', formProperty: 'first_Name', formValues: formValues,/*, icon: Icons.groups_rounded,suffixIcon:Icons.verified*/),
                
                const SizedBox( height: 30 ),
                              
                CustomInputField( labelText: 'Nick Name', hintText: 'ingrese su Nickname', helperText: 'solo letras y numeros', formProperty: 'last_Name', formValues: formValues),
          
                const SizedBox( height: 30 ),
                              
                CustomInputField( labelText: 'Email', hintText: 'ingrese su Email', emailKeyboard: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                
                const SizedBox( height: 30 ),
                              
                CustomInputField( labelText: 'Password', hintText: 'ingrese su Contraseña',obscureText: true, formProperty: 'password', formValues: formValues,),
                
                const SizedBox( height: 30 ),

                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value:'Admin',child: Text('Admin')),
                    DropdownMenuItem(value:'SuperAdmin',child: Text('SuperAdmin')),
                    DropdownMenuItem(value:'Developer',child: Text('Developer')),
                    DropdownMenuItem(value:'Jr.Developer',child: Text('Jr.Developer'))
                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role']= value ?? 'Admin';// si es null que sea por defecto admin

                  }),
                
                const SizedBox( height: 45 ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: Center(child: Text('Guardar'))),
                  onPressed: (){
                    
                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate() ){
                      print('Formulario no valido');
                      return;
                    } 
                    
                    //* IMPRIMIR VALORES DEL FORMULARIO
                    print(formValues);
                  },
                  )
          
              ],
            ),
          ),
         ),
      ),
    );
  }
}

