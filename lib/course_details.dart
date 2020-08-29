import 'package:academias_moviles/course.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  final Course course;
  CourseDetails({this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Me inscribe en el curso ${course.title}");
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(course.image),
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              course.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
