import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/job_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'lokal.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> delDatabase() async {
    String path = join(await getDatabasesPath(), 'lokal.db');
    return await deleteDatabase(path);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE jobs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        place TEXT,
        salary TEXT,
        tel TEXT
      )
    ''');
  }

  Future<int> insertItem(Job job) async {

    Database db = await database;
    return await db.insert('jobs', {'title': job.title,'place': job.primaryDetails?.place,'salary': job.primaryDetails?.salary,'tel': job.customLink});
  }

  Future<List<Job>> getItems() async {
    List<Job> list=[];
    Database db = await database;
    List<Map<String, dynamic>> temp= await db.query('jobs');
    for(int i=0;i<temp.length;i++){
      Job job = Job();
      Map<String, dynamic> map= temp[i];
      job.index=map['id'];
      job.title=map['title'];
      job.customLink=map['tel'];

      PrimaryDetails primaryDetails=PrimaryDetails();
      primaryDetails.place=map['place'];
      primaryDetails.salary=map['salary'];
      job.primaryDetails=primaryDetails;

      list.add(job);
    }
    return list;
  }

  Future<int> deleteItem(int index) async {
    Database db = await database;
    return await db.delete('jobs', where: 'id = ?', whereArgs: [index]);
  }
}