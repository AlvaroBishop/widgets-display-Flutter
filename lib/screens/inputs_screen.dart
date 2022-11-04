import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inputs y forms")),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          TextFormField(
              autofocus: true,
              initialValue: '',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) => print('value: $value'),
              validator: (value) {
                //valida el formulario
                if (value == null) return 'Este campo es requerido';
                return value.length < 3 ? 'Minimo de 3 letras' : null;
              },
              // determina cuando validar el formulario
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  icon: Icon(Icons.admin_panel_settings),
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  suffixIcon: Icon(Icons.group_outlined),
                  counterText: '3 caracteres',
                  helperText: 'Solo letras',
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre')),
        ]),
      )),
    );
  }
}
