import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context ) {
    showCupertinoDialog(
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(style: FlutterLogoStyle.stacked, size: 100,),
    
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar', style: TextStyle(color: Colors.red),)),
              TextButton(
                onPressed: () => Navigator.pop(context), 
              child: Text('Ok'))
            ],
        );
      },);
  }

  void displayDialogAndroid( BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(style: FlutterLogoStyle.stacked, size: 100,),
    
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar', style: TextStyle(color: Colors.red))),
              TextButton(
                onPressed: () => Navigator.pop(context), 
              child: Text('Ok'))
            ],
        );
    },);
  }

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
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => Navigator.pop(context),
        child: const Icon( Icons.close ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
