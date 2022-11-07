import 'package:flutter/material.dart';
import 'package:widgets_showdown/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inputs y forms")),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: const [
          CustomInputField(labelText: 'Nombre', helperText: 'Nombre del usuario', hintText: 'hint text', counterText: 'counter text'),
        ]),
      )),
    );
  }
}

