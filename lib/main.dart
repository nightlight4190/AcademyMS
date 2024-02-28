import 'package:ams/view/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  "Academy Management System",
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor:  const Color.fromARGB(255, 130, 139, 139), 
          primary: const Color.fromARGB(255, 130, 139, 139), 
        ),
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            bodyMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )
          ),
       ),  
       home:  const HomeScreen(),
    );
  }
}




// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'login',
//     routes: {
//       'login':(context)=> const MySignin()
//     } ,
//   ));
// }