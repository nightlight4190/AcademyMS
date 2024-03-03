import 'package:flutter/material.dart';
import 'package:ams/view/screens/home_page.dart';
import 'package:ams/features/assignments/assignment_screen.dart';
import 'package:ams/features/class_schedule/class_appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Academy Management System",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 202, 215, 215),
            primary: Color.fromARGB(255, 228, 237, 237),
          ),
          textTheme: const TextTheme(
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
        ),
        home: ClassSchedule(title: 'schedule')
        //HomeScreen(),
        );
  }
}
