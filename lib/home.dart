import 'package:flutter/material.dart';
import 'workout_list.dart';
import 'user.dart';
import 'dashboard.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    WorkOutList('动作库'),
    Dashboard('Dashboard'),
    User('user'),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        fixedColor: Color(0xFF313A52),
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            title: Text('WorkOutList')
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Dashboard')
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('User')
          ),
        ],
      ),
    );
  }
}