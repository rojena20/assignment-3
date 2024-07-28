import 'package:flutter/material.dart';

import 'models/textField_model.dart';

class Textfield extends StatelessWidget {
  TextfiledModel textfiledModel;
  TextInputType keyboardType;
  TextEditingController controller;

  Textfield(
      {super.key,
      required this.textfiledModel,
      required this.keyboardType,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: textfiledModel.textFiledIcon,
        suffixIconColor: Color.fromARGB(255, 33, 150, 243),
        hintText: textfiledModel.textFiledPlaceholder,
        hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
