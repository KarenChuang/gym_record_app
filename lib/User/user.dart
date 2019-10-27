import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String text;
  User(this.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset('./assets/hakase02.jpg', width: 50,),
                    Text('冰冰冰冰清')
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: double.infinity,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(2.0),
                color: Colors.green,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: double.infinity,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(2.0),
                color: Colors.green,
              ),
            ),
          ),
       
        ],
      ),
    ));
  }
}
