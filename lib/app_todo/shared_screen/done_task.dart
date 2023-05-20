import 'package:bmi/app_todo/shared_parts/appbar.dart';
import 'package:flutter/material.dart';

class DoneTask extends StatelessWidget {
  const DoneTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreen("DoneTask"),
    );
  }
}
