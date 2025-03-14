import 'package:flutter/material.dart';

class TextfieldPage extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  

  const TextfieldPage({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: hintText,
      ),
      obscureText: obsecureText,
    );
  }
}