import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String text;
  // const User({Key key}) : super(key: key);
  User(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}