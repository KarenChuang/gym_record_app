import 'package:flutter/material.dart';

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
    '全部',
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
              bottom: TabBar(
                indicatorWeight: 4,
                indicatorColor: Color(0xFFF8D20D),
                tabs: myTabs,
                controller: _controller,
              )),
          body: TabBarView(
            controller: _controller,
            children: _tabValues.map((f) {
              // return Center(
              //   child: Text(f),
              // );
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFDCE3ED),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(18),
                              child: Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // Text((index + 1).toString()),
                                  Icon(Icons.fitness_center),
                                  Column(
                                    children: <Widget>[
                                      Text(f),
                                      Chip(
                                        backgroundColor: Colors.grey.shade800,
                                        label: Text(
                                          '臀部',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add_circle),
                                  ),
                                  // Text('标题标题标题'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            }).toList(),

            // Column()
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
