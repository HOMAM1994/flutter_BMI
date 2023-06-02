import 'package:flutter/material.dart';
import 'login.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
        leading: const Icon(Icons.account_circle_rounded),
        actions: const [Icon(Icons.menu)],
      ),
      body:const Login(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
