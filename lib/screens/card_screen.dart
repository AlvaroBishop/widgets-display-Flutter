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
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_960_720.jpg', name: 'Iceland', ),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_960_720.jpg', name: null,),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2017/06/10/05/26/rice-terraces-2389023_960_720.jpg', name: 'Japan'),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2015/01/28/23/35/hills-615429_960_720.jpg', name: 'Ireland'),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2018/06/09/17/25/trees-3464777_960_720.jpg'),
          SizedBox(height: 100,),
        ],
        )
    );
  }
}
