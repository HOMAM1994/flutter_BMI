import 'package:bmi/app_todo/shared_parts/floting_botten.dart';
import 'package:bmi/app_todo/shared_screen/arcived_task.dart';
import 'package:bmi/app_todo/shared_screen/done_task.dart';
import 'package:bmi/app_todo/shared_screen/task.dart';
import 'package:flutter/material.dart';
import 'database/database.dart';
import 'shared_parts/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screenBody = [
    Task(),
    const DoneTask(),
    const ArchivedTask(),
  ];
  IconData fbIcon = Icons.edit;
  int index = 0;
  var formkey = GlobalKey<FormState>();
  var scafoldkey = GlobalKey<ScaffoldState>();
  bool isBottomSheet = false;

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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          screenBody[index],
        ],
      ),

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
          if (isBottomSheet) {
            if (form.currentState!.validate()) {
              insertDataBase(database!);
              Navigator.pop(context);
              isBottomSheet = false;
              setState(() {
                fbIcon = Icons.edit;
              });
            }
          } else {
            scafoldkey.currentState
                ?.showBottomSheet(
                  (context) => flotingBotten(context),
                )
                .closed
                .then((value) {
              isBottomSheet =
              false;
              setState(() {
                fbIcon = Icons.edit;
              });
            });
            isBottomSheet = true;
            setState(() {
              fbIcon = Icons.add;
            });
          }
        },
        child: Icon(fbIcon),
      ),
    );
  }
}
