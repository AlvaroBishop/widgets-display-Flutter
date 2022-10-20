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
          CustomCardType1()
        ],
        )
    );
  }
}
