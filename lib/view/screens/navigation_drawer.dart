import 'package:ams/features/class_schedule/class_appointment.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final border =  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            );

    return  Drawer(
      backgroundColor: Color.fromARGB(255, 226, 245, 249),
      child: ListView(
        padding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children:  [
          UserAccountsDrawerHeader(
           accountName: const Text("Asis"), 
           accountEmail: const Text("ask@gmail.com"),
           currentAccountPicture: const CircleAvatar(
             child: ClipOval(
               child:Icon(Icons.account_circle_rounded),
             ),
           ),
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.primary,
           ),
         ),

        const SizedBox(height: 40),

          ListTile(
            shape: border,
            tileColor:Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.home),
            title:  Text("Home",
            style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 20),

          ListTile(
            shape: border,
            tileColor: Theme.of(context).colorScheme.primary,  
            leading: const Icon(Icons.school),
            title:  Text("My Courses",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 20),

          ListTile(
            shape:border,
            tileColor: Theme.of(context).colorScheme.primary, 
            leading: const Icon(Icons.assignment),
            title:  Text("Assignment Log",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),

          const SizedBox(height: 20),

          ListTile(
            shape: border,
            tileColor:Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.calendar_month_rounded),
            title: Text("Schedule",
            style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    var classSchedule = ClassSchedule(title: 'Class Schedule');
                    return  classSchedule;
              }));
            },
          ),

           const SizedBox(height: 20),

           ListTile(
            shape: border,
            tileColor:Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.group),
            title:  Text("Attendence",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),
          
           const SizedBox(height: 20),

          ListTile(
            shape: border,
            tileColor: Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.chat),
            title:  Text("Chat",
             style: Theme.of(context).textTheme.bodyMedium),
            
            onTap: () {},
          ),

           const SizedBox(height: 20),

          ListTile(
            shape: border,
            tileColor: Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.leaderboard),
            title:  Text("Reports",
             style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {},
          ),
          
          const SizedBox(height: 20),

           ListTile(
            shape: border,
            tileColor: Theme.of(context).colorScheme.primary,
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