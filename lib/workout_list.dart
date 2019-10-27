import 'package:flutter/material.dart';
import 'exercise_item.dart';


class WorkOutList extends StatefulWidget {
  WorkOutList(String s, {Key key}) : super(key: key);

  @override
  _WorkOutListState createState() => _WorkOutListState();
}

class _WorkOutListState extends State<WorkOutList> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '全部'),
    Tab(text: '上肢'),
    Tab(text: '下肢'),
    Tab(text: '有氧'),
  ];

  final List<String> _tabValues = [
    '高位下拉',
    '上肢',
    '下肢',
    '有氧',
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _tabValues.length,
      vsync: ScrollableState(),
    );
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          floatingActionButton: ActionButton(),
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Color(0xFF313A52),
              title: Text('动作库'),
actions: <Widget>[
          new IconButton(icon: new Icon(Icons.playlist_add),
              onPressed: (){},
          ),
        ],
              bottom: TabBar(
                indicatorWeight: 4,
                indicatorColor: Color(0xFFF8D20D),
                tabs: myTabs,
                controller: _controller,
              )),
          body: TabBarView(
            controller: _controller,
            children: _tabValues.map((value) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ExerciseItem(value)
                ],
              );
            }).toList(),
          )),
    );
  }
}

class ActionButton extends StatefulWidget {
  ActionButton({Key key}) : super(key: key);

  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.fitness_center),
      backgroundColor: Color(0xFF313A52),
      elevation: 0.0,
      onPressed: () {
        print(isOpen);
        if (isOpen) {
          Navigator.of(context).pop();
          setState(() {
            isOpen = false;
          });
        } else {
          showBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 250,
                    margin: EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                        color: Color(0xFF4D5465),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black45,
                            offset: new Offset(3.0, 2.0),
                            blurRadius: 4.0,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            '22',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ));
          setState(() {
            isOpen = true;
          });
        }
      },
    );
  }
}
