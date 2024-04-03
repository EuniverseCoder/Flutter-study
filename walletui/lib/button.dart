import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color textColor, bgColor;
  final String text;

  const Button(
      {super.key,
      required this.textColor,
      required this.bgColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: bgColor),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 23),
      ),
    );
  }
}
