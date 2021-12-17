import 'package:console_app/models/database.dart';

class Setting {
  Database? _database;

  Database get database {
    return _database ??= Database();
  }

  void set database(Database db) {
    _database = db;
  }
}
