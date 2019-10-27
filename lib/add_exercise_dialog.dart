import 'package:flutter/material.dart';

class AddExerciseDialog extends StatefulWidget {
  AddExerciseDialog({Key key}) : super(key: key);

  @override
  _AddExerciseDialogState createState() => _AddExerciseDialogState();
}

class _AddExerciseDialogState extends State<AddExerciseDialog> {

  _openDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('dialog'),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //    child: ,
    // );
  }
}