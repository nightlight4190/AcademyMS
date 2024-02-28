// import 'package:flutter/material.dart';

// class MySignin extends StatefulWidget {
//   const MySignin({super.key});

//   @override
//   State<MySignin> createState() => _MySigninState();
// }

// class _MySigninState extends State<MySignin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold (
//       backgroundColor: Colors.white,
//       body:SafeArea(
//         child: Stack(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left:35, top: 130),
//               child: const Text('Signup Your Account', 
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 33
//               ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height*0.5,
//                   right: 35,
//                   left:35,
//                    ),
//                 child: Column(
//                   children: [
//                    const Text(
//                     "Email",
//                     style: 
//                         TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                           height: 10,
//                         ),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Email',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10)
//                         )
//                       ),
//                     ),
//                   const   SizedBox(
//                       height: 30,
//                     ),
//                    const  Text(
//                      "Password",
//                      style: 
//                         TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
//                      ),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         hintText: 'Password',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10)
//                         )
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                    const  SizedBox(
//                       height: 30,
//                     ),
//                     MaterialButton(
//                     onPressed: (){},
//                     child: const Text('Sign In'),
//                     color:const  Color.fromARGB(255, 226, 147, 29),
//                     textColor: Colors.white,
//                     ),
//                     const Text(
//                       'Already have an Account?',
//                       style: 
//                       TextStyle(fontSize: 12),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//         ),
//     );
//   }
// }