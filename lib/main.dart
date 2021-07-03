import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_current/Task.dart';
import 'package:task_current/Task.dart';
import 'package:task_current/add_members.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/AddParticipants',
        routes: {
          '/AddParticipants': (context) => AddParticipants(),
        },
      );
    });
  }
}




