import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Halo',
    'Gears',
    'The Legend of Zelda'
  ];
  const ListView1Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
        centerTitle: true,
      ),
      body: ListView(
        // Lista de Widgets
        children: [
          ...options.map(
            (game) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text(game),
            ),
          )
        ],
      ),
    );
  }
}
