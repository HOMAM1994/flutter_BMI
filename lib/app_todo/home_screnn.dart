import 'package:bmi/app_todo/shared_screen/arcived_task.dart';
import 'package:bmi/app_todo/shared_screen/done_task.dart';
import 'package:bmi/app_todo/shared_screen/task.dart';
import 'package:flutter/material.dart';
import 'database/database.dart';
import 'shared_parts/appbar.dart';
import 'shared_parts/floting_botten.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screenBody = [
    const Task(),
    const DoneTask(),
    const ArchivedTask(),
  ];
  int index = 0;
  var scafoldkey = GlobalKey <ScaffoldState>();

  @override
  void initState() {
    super.initState();
    createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      appBar: appbar("${screenBody[index]}"),
      body: screenBody[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 32,
            ),
            label: "NewTask",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done_all,
                size: 32,
              ),
              label: "DoneTask"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive_outlined,
                size: 32,
              ),
              label: "Archive"),
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: Colors.teal.shade800,
        fixedColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scafoldkey.currentState?.showBottomSheet(
                (context) => flotingBotten(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
