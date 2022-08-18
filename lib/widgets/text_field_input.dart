import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final bool isEnable;
  final String labelText;

  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
    this.isEnable = true,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnable,
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          // labelText: labelText,
          border: OutlineInputBorder(),
          
              
          fillColor: Colors.white,
          filled: true,
          errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
