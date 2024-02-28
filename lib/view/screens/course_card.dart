import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String image;
  final Color backgroundColor;

  const CourseCard({super.key,
  required this.title,
  required this.image,
  required this.backgroundColor,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
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