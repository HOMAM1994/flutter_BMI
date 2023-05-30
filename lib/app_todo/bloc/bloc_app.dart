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

  Database? database;
  List<Map>? listDataAll;
  List<Map>? listDataDone;
  List<Map>? listDataArchived;

  void createDataBase() {
    openDatabase(
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
      onOpen: (database) {
        getDatabase(database).then((value) {
          listDataAll = value;
          print(listDataAll);
        });
      },
    ).then((value) {
      database = value;
      emit(CreateDatabaseApp());
    });
  }

  Future insertDataBase(Database database) async {
    int id1;
    database.transaction((txn) async {
      txn
          .rawInsert(
        'INSERT INTO Test(task, status, date,time) VALUES("${task.text}", "${status.text}","${date.text}", "${time.text}")',
      )
          .then((value) {
        id1 = value;
        emit(InsertDatabaseApp());
        getDatabase(database).then((value) {

          listDataAll = value;
          emit(GetDatabaseApp());
        });
      });
    }).then((value) {});
  }

  Future<List<Map>> getDatabase(database) {
    return database!.rawQuery('SELECT * FROM Test');
  }
  void upDate (String state ,int id ){
    database!.rawUpdate('UPDATE task SET status = ? WHERE id = ?',['$status',id],).then((value){
      emit(UpdateDatabaseApp());
    });
  }

  void changIndex(index) {
    currentIndex = index;
    emit(ChangBottom());
  }IconData fbIcon = Icons.edit;
  bool isBottomSheet = false;

  void changBottomSheet({required bool isShow, required IconData icon}){
    isBottomSheet=isShow;
    fbIcon=icon;
    emit(ChangBottomSheet());
  }
}
