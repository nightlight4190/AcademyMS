import 'package:ams/view/screens/course_card.dart';
import 'package:ams/view/screens/global_variables.dart';
import 'package:ams/view/screens/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 56, 61),
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: const Color.fromARGB(255, 148, 164, 180),
        ),
        drawer: const NavDrawer(),

        body: Expanded(
          child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context,index) {
              final course = courses[index];
              return CourseCard(
                title: course['title'] as String,
                image: course['imageUrl'] as String,
              );
            }),
        ),
  
        ),
    );
  }
}