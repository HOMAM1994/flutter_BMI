import 'package:bmi/app_todo/shared_parts/appbar.dart';
import 'package:flutter/material.dart';

class ArchivedTask extends StatelessWidget {
  const ArchivedTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreen("ArchivedTask"),
    );
  }
}
