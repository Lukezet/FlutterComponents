import 'package:flutter/material.dart';
import 'package:flutter_components1/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue = 100;
  bool _checkboxValue = false;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          
          
          Slider.adaptive( //se adapta si es Android o IOS
            min: 50,
            max: 600,
            //divisions: 4, 
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _checkboxValue 
            ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null ,
          ),
          
          // Checkbox(
          //   value: _checkboxValue, 
          //   onChanged: ( value ){
          //     _checkboxValue = value ?? true;
          //     setState(() {});
          //   }
          // ),
          // Switch(
          //   value: _checkboxValue,
          //    onChanged: ( value )=> setState(() {_checkboxValue = value; })
          //   ),
          CheckboxListTile(
            title: const Text("Activate Slider"),
            activeColor: AppTheme.primary,
            value: _checkboxValue, 
            onChanged: ( value )=> setState(() {_checkboxValue = value ?? true; })
            ),

          SwitchListTile.adaptive(
            title: const Text("Activate Slider"),
            activeColor: AppTheme.primary,
            value: _checkboxValue,
            onChanged: ( value )=> setState(() {_checkboxValue = value; }))  ,

          const AboutListTile(
            applicationIcon: FlutterLogo(size: 40,),
          ),          
          
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const AssetImage('assets/batman.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}