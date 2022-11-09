import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? counterText;
  final String? helperText;
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.counterText,
    this.helperText,
    this.hintText,
    this.labelText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        //valida el formulario
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      // determina cuando validar el formulario
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        counterText: counterText,
        helperText: helperText,
        hintText: hintText,
        labelText: labelText,
        icon: icon == null ? null : Icon(icon),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.green)),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(10),
        //       topRight: Radius.circular(10)),
      ),
    );
  }
}
