import 'package:academias_moviles/course.dart';
import 'package:academias_moviles/course_details.dart';
import 'package:flutter/material.dart';

import 'title_text.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title:
              Hero(tag: 'image', child: Image.asset("assets/images/logo.png"))),
      body: Container(
        color: Colors.green[200],
        child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, position) {
              return Container(
                width: 55,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 55),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CourseDetails(course: courses[position]);
                    }));
                  },
                  child: Card(
                    child: ListTile(
                      title: TitleText(courses[position].title),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(courses[position].image),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

List<Course> courses = [
  Course(
      title: "Android Studio con Kotlin de Inicial a Intermedio",
      description:
          "En este curso aprenderás a desarrollar aplicaciones Kotlin ademas de aprender el lenguaje de programación, teniendo como objetivo lograr conocer desde conceptos de programación con el...",
      image: "assets/images/agosto.jpg"),
  Course(
      title: "iOS desarrollo de aplicaciones iPhone/iPad",
      description:
          "Este curso esta orientado a todo programador, que desee iniciarse en el desarrollo de aplicaciones iOS iPhone y iPad, El curso inicia desde los primeros conceptos de Vistas, botones,...",
      image: "assets/images/setiembre.jpg"),
  Course(
      title: "ganaras más conocimientos y experiencias",
      description:
          "En este curso se logra completar los conocimientos del curso inicial - intermedio, entre los cuales se aprende sobre arquitecturas en iOS así como mejorar conceptos de Swift con...",
      image: "assets/images/octubre.jpg"),
];
