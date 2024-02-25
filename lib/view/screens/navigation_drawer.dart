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
             color:   Color.fromARGB(255, 204, 210, 213), 
           ),
         ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.home),
            title:  Text("Home",
            style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.school),
            title:  Text("My Courses",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape:border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.assignment),
            title:  Text("Assignment Log",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.schedule,
            weight: 400,),
            title: Text("Schedule",
            style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

           const SizedBox(height: 15),

           ListTile(
            shape: border,
            tileColor:const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.group),
            title:  Text("Attendence",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),
          
           const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.chat),
            title:  Text("Chat",
             style: Theme.of(context).textTheme.bodyMedium),
            
            onTap: () {},
          ),

           const SizedBox(height: 15),

          ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.grading),
            title:  Text("Reports",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 15),

           ListTile(
            shape: border,
            tileColor: const Color.fromARGB(255, 204, 210, 213), 
            leading: const Icon(Icons.settings),
            title:  Text("Settings",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

        ],
      )
    );
  }
}