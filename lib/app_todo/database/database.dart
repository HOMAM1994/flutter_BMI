import 'package:bmi/app_todo/database/controler_datadase.dart';
import 'package:sqflite/sqflite.dart';

Database? database;
List<Map>? listdata;
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
      print('Error is $error');
    });
  },
    onOpen: (database){
       getDatabase(database).then((value) {
         listdata=value;
         print (listdata);
       });
    },);

}

Future insertDataBase(Database database) async {
  await database.transaction((txn) async {
    int id1 = await txn.rawInsert(
      'INSERT INTO Test(task, status, date,time) VALUES("${task.text}", "${status.text}","${date.text}", "${time.text}")',
    );
    print('$id1');
  });
}
Future<List<Map>> getDatabase(database)async{
  return await database!.rawQuery('SELECT * FROM Test');

}
