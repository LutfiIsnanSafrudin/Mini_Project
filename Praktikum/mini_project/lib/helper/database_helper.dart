import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;
  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initilizeDB();
    return _database;
  }

  final String _tableName = 'order';
  Future<Database> _initilizeDB() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'database.db'),
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE $_tableName(id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
      },
      version: 1,
    );
    return db;
  }
}
