import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app_todo/bloc/bloc_observe.dart';
import 'app_todo/home_screen.dart';

void main() {

   Bloc.observer = MyBlocObserver();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}
