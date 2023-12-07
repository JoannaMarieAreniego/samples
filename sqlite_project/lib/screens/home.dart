import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_project/constants/db_constants.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: ElevatedButton(
        onPressed: ()async{
          var dbpath = join (await getDatabasesPath(), DBNAME);
          final database = await openDatabase(
            dbpath,
            version: DBVERSION,
            onCreate: (db, version) async{
              await db.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)'
              );
              print('table_created');
            },
            onUpgrade: (db, oldVersion, newVersion) async{
              await db.execute('DROP TABLE Test');
            }
          );
        }, 
        child: const Text('Open DB'))
    );
  }
}