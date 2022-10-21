import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards')
        ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 10, vertical: 10),
        children: [
          CustomCardType1(),
          CustomCardType2(imageUrl: 'https://pixabay.com/get/g78c639902f86f6430e93042b30de0c42faf5810e712f40092ce1e659fd377e64d129b5baa97c63d367c14a1e6e1e4bdd6dcd65dfe007cfaa749df547fd7f939bda7f0e68977ecc00e696f8f7428c30a4_1920.jpg', name: 'Iceland',),
          CustomCardType2(imageUrl: 'https://pixabay.com/get/g43fe42351d48a9eb9723655b1112dca717d1a45e105c591c3abe0c0236f72417e15fc004ff73cf95b7020761419aadad.jpg', ),
          CustomCardType2(imageUrl: 'https://pixabay.com/get/g6fafde3d788fcdda7f4a60bd9112ae88c7d1865287653ac4a0bf06a396485d6f2d6218a992dce58158a4d57229ab44aab60da11149fef90305226b4026aef326_1920.jpg', name: 'Japan'),
          CustomCardType2(imageUrl: 'https://pixabay.com/get/g4771f9c9b774c2bc68da10b6bf147be6d1c1629e52d31cd240c079eeddb2d2d9aef828404aea8f255a734b6aa839cf4a08e0f459b9ae9fc2c5ff62dbf4589428_1920.jpg', name: 'Ireland'),
          CustomCardType2(imageUrl: 'https://pixabay.com/get/g56752f5545ebbf43492a32da20e0cdeb116880968de98ae75d544529f3c9f8501bcd091894a21668fca789a39243450e3a800f2f0fc224fd9972c3bb5df72b89_1920.jpg'),
          SizedBox(height: 100,)
        ],
        )
    );
  }
}
