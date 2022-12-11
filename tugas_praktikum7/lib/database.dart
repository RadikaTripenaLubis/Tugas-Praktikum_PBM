import 'package:tugas_praktikum7/details/merchandise.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();
  static late Database _database;

  Future<Database> get database async {
    return _database = await _initializeDb();
  }

  static const String _tableName = 'merchandise';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      '${path}app.db',
      onCreate: (db, version) async {
        await db.execute(
            '''CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, name TEXT, description TEXT, price TEXT, quantity INTEGER)''');
      },
      version: 1,
    );
    return db;
  }

  Future<void> tambahMerchandise(Merchandise merchandise) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      merchandise.toMap(),
    );
  }

  Future<List<Merchandise>> listMerchandise() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);

    return result.map((res) => Merchandise.fromMap(res)).toList();
  }

  Future<void> hapusMerchandise(int id) async {
    final Database db = await database;

    await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> updateMerchandise(Merchandise merchandise) async {
    final Database db = await database;

    await db.update(
      _tableName,
      merchandise.toMap(),
      where: 'id = ?',
      whereArgs: [merchandise.id],
    );
  }
}
