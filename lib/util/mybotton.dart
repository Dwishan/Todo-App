import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blueGrey.shade700,
      elevation: 0,
      child: Text(
        text,
        style: TextStyle(color: Colors.white70),
      ),
    );
  }
}