import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Halo',
    'Gears',
    'The Legend of Zelda',
    'Valorant',
    'Dead Space'
  ];
  const ListView2Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        // shadowColor: Colors.green.shade200,
        // surfaceTintColor: Colors.red,
        // foregroundColor: Colors.green.shade200,
        // elevation: 1,
        // backgroundColor: Colors.black,
        // centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_right,
            color: Colors.green,
          ),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => Divider(
          thickness: 1,
          color: Colors.green.shade200,
        ),
      ),
    );
  }
}
