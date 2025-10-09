import 'package:flutter/material.dart';
import 'package:fse34_25_1_2/people_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name generator',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Name generator"),
          actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
        ),
        body: const Center(child: PeopleList()),
      ),
    );
  }

  void logout() {
    debugPrint("S'ha premut el logout");
  }
}
