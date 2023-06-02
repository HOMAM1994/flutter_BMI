import 'package:bloc/bloc.dart';
import 'package:bmi/app_todo/shared_screen/arcived_task.dart';
import 'package:bmi/app_todo/shared_screen/done_task.dart';
import 'package:bmi/app_todo/shared_screen/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import '../database/controler_datadase.dart';
import 'counter_states.dart';

class CounterApp extends Cubit<CounterStatus> {
  CounterApp() : super(InitialState());

  static CounterApp get(context) => BlocProvider.of(context);
  List screenBody = [
    Task(),
    DoneTask(),
    ArchivedTask(),
  ];
  int currentIndex = 0;

  IconData fbIcon = Icons.edit;
  bool isBottomSheet = false;

  Database? database;
  List<Map> listDataAll = [];
  List<Map> listDataDone = [];
  List<Map> listDataArchived = [];

  void changIndex(index) {
    currentIndex = index;
    emit(ChangBottom());
  }

  void changBottomSheet({required bool isShow, required IconData icon}) {
    isBottomSheet = isShow;
    fbIcon = icon;
    emit(ChangBottomSheet());
  }

  ///////////////////////////////
  void createDataBase() async {
    await openDatabase(
      "databaseTest.db",
      version: 1,
      onCreate: (Database db, int version) async {
        // When creating the db, create the table
        await db
            .execute(
                'CREATE TABLE Test (id INTEGER PRIMARY KEY, task TEXT, status TEXT, date TEXT,time TEXT)')
            .then((value) {
          print("create DataBase");
        }).catchError((error) {
          print('Error is $error');
        });
      },
      onOpen: (database) {},
    ).then((value) {
      database = value;
      emit(CreateDatabaseApp());
      getDatabase(database);
    });
  }

  void getDatabase(database) async {
    await database!.rawQuery('SELECT * FROM Test').then((value) {
      listDataDone.clear();
      listDataArchived.clear();
      listDataAll.clear();
      value.forEach((element) async {
        if (element['status'] == 'done') {
          listDataDone.add(element);
        } else if (element['status'] == 'archive') {
          listDataArchived.add(element);
        } else {
          listDataAll.add(element);
        }
      });
      emit(GetDatabaseApp());
    });
  }

  Future insertDataBase(Database database) async {
    database.transaction((txn) async {
      txn
          .rawInsert(
        'INSERT INTO Test(task, status, date,time) VALUES("${task.text}", "new","${date.text}", "${time.text}")',
      )
          .then((value) {
        emit(InsertDatabaseApp());
        getDatabase(database);
      });
      task.text='';
      time.text='';
      date.text='';
    });
  }

  void updateData({required String status, required int id}) async {
    database!.rawUpdate(
        'UPDATE Test SET status = ? WHERE id = ?', [status, id]).then((value) {
      emit(UpdateDatabaseApp());
      print('updated : $status id : $id ');
    });
  }

  Future deleteData({required int id}) async {
   return await database!
        .rawDelete('DELETE FROM Test WHERE id = ?', ['$id']).then((value) {

          emit(DeleteRow());
          getDatabase(database);
    });
  }
}
