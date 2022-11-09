import 'package:flutter/material.dart';
import 'package:widgets_showdown/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Alvaro',
      'last_name': 'Bishop',
      'email': 'bishopgamma@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    
    return Scaffold(
      appBar: AppBar(title: const Text("Inputs y forms")),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
             CustomInputField(
              labelText: 'Nombre',
              helperText: 'Nombre del usuario',
              hintText: 'hint text',
              counterText: 'counter text',
              icon: Icons.person,
              prefixIcon: Icons.perm_contact_cal_rounded,
              suffixIcon: Icons.next_plan,
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
             CustomInputField(
                labelText: 'Apellido',
                helperText: 'Apellido',
                hintText: 'hint text',
                counterText: 'counter text',
                formProperty: 'last_name',
                formValues: formValues,
                ),
            const SizedBox(
              height: 30,
            ),
             CustomInputField(
              labelText: 'Email',
              helperText: 'Correo del usuario',
              hintText: 'hint text',
              counterText: 'counter text',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
             CustomInputField(
                labelText: 'Contraseña',
                helperText: 'Contraseña del usuario',
                hintText: 'hint text',
                counterText: 'counter text',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
             ),
            const SizedBox(
              height: 30,
            ),

            DropdownButtonFormField(
              value: 'Admin',
              items: const [
                 DropdownMenuItem(value: 'Admin',child: Text('Admin'),),
                 DropdownMenuItem(value: 'Superuser',child: Text('Superuser'),),
                 DropdownMenuItem(value: 'Developer',child: Text('Admin'),),
                 DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer'),),
              ], 
              onChanged: ( value ) {
                print( value);
                formValues['role'] = value ?? 'Admin'; // si es nulo entonces es admin
              }),

            ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar')),
                ))
          ]),
        ),
      )),
    );
  }
}
