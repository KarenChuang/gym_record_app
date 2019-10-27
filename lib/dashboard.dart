import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String text;
  Dashboard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}