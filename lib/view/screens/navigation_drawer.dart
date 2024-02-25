import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final border =  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            );
    return  Drawer(
      child: ListView(
        padding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children:  [
         const UserAccountsDrawerHeader(
           accountName: Text("Asis"), 
           accountEmail:  Text("ask@gmail.com"),
           currentAccountPicture: CircleAvatar(
             child: ClipOval(
               child:Icon(Icons.account_circle_rounded),
             ),
           ),
           decoration: BoxDecoration(
             color:  Color.fromRGBO(216, 240, 253, 1),
             borderRadius: BorderRadius.all(Radius.circular(40,),),
           ),
         ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.school),
            title: const Text("My Courses"),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape:border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.assignment),
            title: const Text("Assignment Log"),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.schedule),
            title: const Text("Schedule"),
            onTap: () {},
          ),

           const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.chat),
            title: const Text("Chat"),
            onTap: () {},
          ),

           const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.grading),
            title: const Text("Reports"),
            onTap: () {},
          ),

          const SizedBox(height: 15),

           ListTile(
            shape: border,
            tileColor: const Color.fromRGBO(216, 240, 253, 1), 
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),

        ],
      )
    );
  }
}