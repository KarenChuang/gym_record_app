import 'package:flutter/material.dart';
import 'exercise_detail.dart';

class Exercise {
  const Exercise(this.title, this.icon, this.tags, this.isAdd);
  final String title;
  final IconData icon;
  final List tags;
  final bool isAdd;
}

List<Exercise> allExerciseList = <Exercise>[
  Exercise('ExerciseList', Icons.fitness_center, ['背部', '肩部', 'xx'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
  Exercise('ExerciseList', Icons.fitness_center, ['背部'], true),
];

class ExerciseItem extends StatefulWidget {
  final String value;
  ExerciseItem(this.value);

  @override
  _ExerciseItemState createState() => _ExerciseItemState();
}

class _ExerciseItemState extends State<ExerciseItem> {

  void _openDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExerciseDetail('dd')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: allExerciseList
                .map((Exercise exercise) => Container(
                    margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                    decoration: BoxDecoration(color: Colors.black12),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.fitness_center),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(exercise.title),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: exercise.tags.map((tag) => Chip(
                                  backgroundColor: Colors.grey.shade800,
                                  label: Text(
                                    tag,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )).toList(),
                            ),
                          ],
                        ),
                        FlatButton(
                          onPressed: _openDetail,
                          child: Text('add'),
                        )
                      ],
                    )))
                .toList()),
      )),
    );
  }
}
