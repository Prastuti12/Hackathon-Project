import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
 final TextEditingController textEditingController;
 final bool isPass;
 final String hintText;
 final TextInputType textInputType;
 final bool isEnable;

  const TextFieldInput({Key? key,
  required this.textEditingController,
  this.isPass = false,
  required this.hintText,
  required this.textInputType,
  this.isEnable=true,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(

      enabled: isEnable,
      controller:textEditingController,
      decoration:InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(8)
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    
    );
  }
}
