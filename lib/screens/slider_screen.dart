
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets_showdown/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          
          Slider.adaptive(
            divisions: 15,
            activeColor: AppTheme.primary,
            min: 50,
            max: 400,
            value: _sliderValue, 
            onChanged: _sliderEnabled ? (value) {
              setState(() {
                _sliderValue = value;
              });
            }    : null
          ),

          Checkbox(
            value: _sliderEnabled, 
            onChanged: (value) {
                _sliderEnabled = value ?? true;

              setState(() {
              });
            },
          ),

          CheckboxListTile(
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {
            _sliderEnabled = value ?? true;
            }),
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
          ),

          Switch(value: _sliderEnabled, onChanged: (value) => setState(() {
            _sliderEnabled = value;
          })),

          SwitchListTile.adaptive(
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {
            _sliderEnabled = value;
            }),
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(image: const NetworkImage(
                'https://cdn.pixabay.com/photo/2017/02/19/03/39/flying-2078870_960_720.png', 
                  ),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ],
      ),
    );
  }
}