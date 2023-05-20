import 'package:sqflite/sqflite.dart';

Database? database;

void createDataBase() async {
  database = await openDatabase("databaseTest.db", version: 1,
      onCreate: (Database db, int version) async {
    // When creating the db, create the table
    await db
        .execute(
            'CREATE TABLE Test (id INTEGER PRIMARY KEY, task TEXT, status TEXT, date TEXT,time TEXT)')
        .then((value) {
      print("create DataBase");
    }).catchError((error) {
      print('Eroor is $error');
    });
  });
}

Future insertDataBase(Database database) async {
  await database.transaction((txn) async {
    int id1 = await txn.rawInsert(
      'INSERT INTO Test(task, status, date,time) VALUES("go to gum", "new","15/5/2023", "11.30 AM")',
    );
    print('$id1');
  });
}
