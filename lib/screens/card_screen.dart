import 'package:flutter/material.dart';

import 'package:flutter_components1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Widget') ,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        children: const [
            CustomCard_type1(),
            SizedBox(height:20),
            CustomCard_type2( nameCard:'Lavanda paramount' ,imageURL: 'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fec8d1c9a-2b43-11eb-b054-8dc1447a1be1.jpg?crop=3980%2C2653%2C5%2C242'),
            SizedBox(height:20),
            CustomCard_type1(),
            SizedBox(height:20),
            CustomCard_type2(nameCard:'Scotish open field',imageURL: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            SizedBox(height:20),
            CustomCard_type1(),
            SizedBox(height:20),
            CustomCard_type2(nameCard:'The end of the World - Iseland',imageURL:'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            SizedBox(height:20),
            CustomCard_type1(),
            SizedBox(height:20),
            CustomCard_type2(imageURL:'https://www.demingheadlight.com/demingheadlight/wp-content/uploads/sites/2/2022/08/f8190bb2-d844-4a32-9b9d-c1188ad72d30-BOWING_TO_THE_SUN_-_20x30_-_Metal_Print.1667489405.3798.jpg'),
            SizedBox(height:20),
        ],
      )
    );
  }
}

