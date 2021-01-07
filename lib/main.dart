import 'package:flutter/material.dart';
import 'file:///F:/YousF74/YoYo%20stuDy/task_github_repo/lib/Ui/Home.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Repos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
