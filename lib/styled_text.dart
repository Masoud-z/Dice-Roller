import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.textColor, this.textFontSize, {super.key});

  final String text;
  final double textFontSize;
  final Color textColor;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: textColor, fontSize: textFontSize),
    );
  }
}
