import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    double left = Random().nextInt(300).toDouble() + 70; // le sumamos
    double right = Random().nextInt(300).toDouble() + 70;
    _width = Random().nextInt(300).toDouble() + 70;
    _height = Random().nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      Random().nextInt(255), 
      Random().nextInt(255), 
      Random().nextInt(255), 
      1
    );
    _borderRadius =  randomShape(left, right, Random().nextInt(4));

    setState(() {
      
    });
  }

  BorderRadius randomShape(double l, double r, int n)
  {
    print(n);
    switch (n) {
      case 0: return BorderRadius.horizontal(left: Radius.circular(l), right: Radius.circular(r));
      case 1: return BorderRadius.circular(l);
      case 2: return BorderRadius.all(Radius.elliptical(l, r));
      case 3: return BorderRadius.vertical(top: Radius.circular(l), bottom: Radius.circular(r));

        default: return BorderRadius.circular(10);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration( milliseconds:  400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
         ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_circle_outline, ),
        ),
    );
  }
}