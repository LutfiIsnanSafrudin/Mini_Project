import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:mini_project/model/menu.dart';

class SqliteService {
  Future<Database> initializeDB() async {
    String dbpath = await getDatabasesPath();
    var path = join(dbpath, "database.db");
    var exists = await databaseExists(path);
    if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}
      ByteData data = await rootBundle.load(join("assets", "database.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
    }
    return openDatabase(
      path,
      version: 1,
    );
  }

  Future<List<ModelMenu>> selectMenu(int kondisi) async {
    final db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db
        .query('main.menu', where: 'kategori_menu = ?', whereArgs: [kondisi]);
    return queryResult.map((e) => ModelMenu.fromMap(e)).toList();
  }
}
