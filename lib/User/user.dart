import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String text;
  User(this.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset('assets/hakase02.jpg', height: 80.0),
                       borderRadius: new BorderRadius.circular(80.0),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                      children: ListTile.divideTiles(context: context, tiles: [
                    ListTile(
                      title: Text('昵称'),
                      trailing: Text('冰冰冰冰冰清'),
                    ),
                    ListTile(
                      title: Text('性别'),
                      trailing: Text('女'),
                    ),
                    ListTile(
                      title: Text('年龄'),
                      trailing: Text('18'),
                    ),
                    ListTile(
                      title: Text('健身房'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    ListTile(
                      title: Text('账户与安全'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    ListTile(
                      title: Text('关于'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ]).toList()),
                )
              ],
            )));
  }
}
