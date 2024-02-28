import 'package:ams/features/course_enrollment.dart';
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
        backgroundColor: const Color.fromRGBO(	233, 243, 245, 1),

        appBar: AppBar(
          title:  Text("Home",
          style: Theme.of(context).textTheme.titleMedium,),
         backgroundColor: const Color.fromRGBO(	233, 243, 245, 1),
        ),
        drawer: const NavDrawer(),

        body: Expanded(
          child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context,index) {
              final course = courses[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return CourseEnrollmentPage(course: course);
                      },
                  ));
                },
                child: CourseCard(
                  title: course['title'] as String,
                  image: course['imageUrl'] as String,
                  backgroundColor: index.isEven 
                  ?  const Color.fromARGB(255, 130, 139, 139) 
                  : const Color.fromARGB(255, 169, 178, 181),
                ),
              );
            }),
        ),
  
        ),
    );
  }
}