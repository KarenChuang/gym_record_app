import 'package:flutter/material.dart';
import './Exercise/exercise_list.dart';
import './User/user.dart';
import './Dashboard/dashboard.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class Destination {
  const Destination(this.title, this.icon);
  final String title;
  final IconData icon;
}

List<Destination> allDestinations = <Destination>[
  Destination('ExerciseList', Icons.fitness_center),
  Destination('Dashboard', Icons.insert_chart),
  Destination('Home', Icons.person),
];

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    ExerciseList('动作库'),
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
          items: allDestinations
              .map((Destination destination) => BottomNavigationBarItem(
                    icon: Icon(destination.icon),
                    title: Text(destination.title),
                  ))
              .toList()),
    );
  }
}
