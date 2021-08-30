import 'package:flutter/material.dart';

class AppTextField {
  const AppTextField._();

  static textField(String input, TextEditingController controller) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Insira seu $input!";
        }
      },
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: input,
        labelStyle: TextStyle(color: Colors.blue),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.blue, fontSize: 24.0),
    );
  }
}
