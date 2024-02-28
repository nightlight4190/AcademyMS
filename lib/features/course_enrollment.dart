import 'package:flutter/material.dart';

class CourseEnrollmentPage extends StatelessWidget {

  final Map<String, Object>course;

  const CourseEnrollmentPage(
    {super.key,
    required this.course});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text("Details"),
      ),

      body: Column(
        children: [
          Text(course['title'] as String,
          style: Theme.of(context).textTheme.bodyMedium),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(course['imageUrl'] as String),
          ),
          const Spacer(flex: 2,),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color:  const Color.fromRGBO(	233, 243, 245, 1),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}