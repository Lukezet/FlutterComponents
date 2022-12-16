import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('George R.R. Martin'),
        actions: [ 
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('GM'),
              backgroundColor: Colors.indigo[500],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 80,
          backgroundImage: NetworkImage('https://edicionesgigamesh.com/wp-content/uploads/2021/01/Portrait_photoshoot_at_Worldcon_75_Helsinki_before_the_Hugo_Awards_%E2%80%93_George_R._R._Martin_cropped.jpg'),
         ),
      ),
    );
  }
}