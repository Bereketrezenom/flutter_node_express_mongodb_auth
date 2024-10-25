// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,hintStyle: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          
        ),
        border: const OutlineInputBorder(
         borderSide: BorderSide(
          color: Color.fromARGB(255, 223, 255, 43),
          width: 2.0,

         )
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          )
        )
        ),

        
    );
  }
}
