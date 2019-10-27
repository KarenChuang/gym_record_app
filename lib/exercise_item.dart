import 'package:flutter/material.dart';

class ExerciseItem extends StatefulWidget {
  final String value;
  ExerciseItem(this.value);

  @override
  _ExerciseItemState createState() => _ExerciseItemState();
}

class _ExerciseItemState extends State<ExerciseItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Text((index + 1).toString()),
                    Icon(Icons.fitness_center),
                    Column(
                      children: <Widget>[
                        Text(
                          'value',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Chip(
                              backgroundColor: Colors.grey.shade800,
                              label: Text(
                                '背部',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Chip(
                              backgroundColor: Colors.grey.shade800,
                              label: Text(
                                '肩部',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        
                      },
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
    );
  }
}
