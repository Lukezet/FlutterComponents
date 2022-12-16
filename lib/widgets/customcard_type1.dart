import 'package:flutter/material.dart';

import 'package:flutter_components1/themes/app_themes.dart';


class CustomCard_type1 extends StatelessWidget {
  const CustomCard_type1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 20,
      shadowColor: Colors.indigoAccent.withOpacity(0.5),
      child:Column(
        children:  [
          const ListTile(
            contentPadding:EdgeInsets.only(right: 20,top: 20,left: 20),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title:Text('I am a Title'),
            subtitle: Text('Labore dolor pariatur nostrud nostrud proident. Pariatur exercitation excepteur sint voluptate elit labore qui qui consectetur qui. In do eiusmod ex fugiat adipisicing id dolore reprehenderit.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok')),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'))
                
              ],
            ),
          )
        ],
      )
    );
  }
}