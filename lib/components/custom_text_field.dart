import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obscure;
  
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple.shade200)
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.purple[100],
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white) 
      ),
    );
  }
}