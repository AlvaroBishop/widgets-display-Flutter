import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('AlertScreen'),),
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.indigo,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: const Text('Mostrar Alerta', style: TextStyle( fontSize: 20 ),),
          ),
          onPressed: () {
          
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon( Icons.close ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
