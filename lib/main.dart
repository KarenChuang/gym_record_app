import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Days',
      // theme: ThemeData(
      //   primarySwatch: Color(0xFF313A52),
      // ),
      home: Home(),
    );
  }
}

class WorkWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      // margin: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.fitness_center),
          Container(child: Column(
            children: <Widget>[
              Text('Bench Press', style: TextStyle(fontSize: 25, color: Colors.black87)),
              Text('Bench Press', style: TextStyle(fontSize: 15, color: Colors.black87)),
            ],
          ),),
          RaisedButton(
            child: Icon(Icons.add),
            onPressed: () => {}
          )
        ],
      )
    );
  }
}