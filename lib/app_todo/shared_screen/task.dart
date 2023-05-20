import 'package:bmi/app_todo/shared_parts/appbar.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreen("task"),
    );
  }
}
