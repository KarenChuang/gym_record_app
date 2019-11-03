import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String text;
  Dashboard(this.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(text),
    );
  }
}