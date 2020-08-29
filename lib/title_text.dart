import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  TitleText(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
    );
  }
}
