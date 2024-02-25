import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String image;

  const CourseCard({super.key,
  required this.title,
  required this.image,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      color: const Color.fromARGB(255, 117, 142, 155),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: Theme.of(context).textTheme.titleMedium,),

            const SizedBox(height: 5,),

         Center(
           child: Image(image: AssetImage(image),
           height: 175,
           ),
         ),
        ],
      ),
    );
  }
}