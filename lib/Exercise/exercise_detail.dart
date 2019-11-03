import 'package:flutter/material.dart';

// import 'package:direct_select_flutter/generated/i18n.dart';
// import 'package:direct_select_flutter/direct_select_container.dart';
// import 'package:direct_select_flutter/direct_select_item.dart';
// import 'package:direct_select_flutter/direct_select_list.dart';

class ExerciseDetail extends StatefulWidget {
  final String title;
  ExerciseDetail(this.title);

  @override
  _ExerciseDetailState createState() => _ExerciseDetailState();
}

class _ExerciseDetailState extends State<ExerciseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF313A52),
        title: Text('ww'),
        actions: <Widget>[],
      ),
    );
  }
}
