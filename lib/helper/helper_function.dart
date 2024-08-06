import 'package:flutter/material.dart';

void displayErorToUser(String message, BuildContext context){
  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: Text(message),
      ),
    );
}