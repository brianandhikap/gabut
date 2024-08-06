import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const ButtonPage({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue[200],
          borderRadius: BorderRadius.circular(14.0),
        ),
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}